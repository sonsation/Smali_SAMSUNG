.class Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;
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


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;->val$animateViews:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 424
    iget-object v1, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;->val$animateViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 425
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 426
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 427
    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 429
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/launcher3/allapps/AppsTransitionAnimation$4;->this$0:Lcom/android/launcher3/allapps/AppsTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->access$200(Lcom/android/launcher3/allapps/AppsTransitionAnimation;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setCrosshairsVisibilityChilds(I)V

    .line 420
    return-void
.end method
