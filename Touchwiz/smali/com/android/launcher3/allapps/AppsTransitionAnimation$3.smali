.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getChangeGridAnimation(ZLjava/util/HashMap;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

.field final synthetic val$animateViews:Ljava/util/ArrayList;

.field final synthetic val$entry:Lcom/android/launcher3/common/stage/StageEntry;

.field final synthetic val$viewsTobeShow:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    iput-object p3, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->val$viewsTobeShow:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->val$animateViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 400
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 401
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->val$animateViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 402
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 403
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 404
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 406
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const v3, 0x3f666666    # 0.9f

    .line 391
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$300(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/controller/AppsController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->val$entry:Lcom/android/launcher3/common/stage/StageEntry;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->repositionBy(Lcom/android/launcher3/common/stage/StageEntry;)V

    .line 392
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->val$viewsTobeShow:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 393
    .local v0, "iconView":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 394
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0

    .line 396
    .end local v0    # "iconView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$3;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$200(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 387
    return-void
.end method
