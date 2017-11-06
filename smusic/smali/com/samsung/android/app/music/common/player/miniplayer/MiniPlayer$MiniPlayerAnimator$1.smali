.class Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$1;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->show(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 561
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 562
    .local v1, "value":F
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->access$1400(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 563
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 566
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v5, p0, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator$1;->this$0:Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    invoke-static {v5, v3}, Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;->access$1500(Lcom/samsung/android/app/music/common/player/miniplayer/MiniPlayer$MiniPlayerAnimator;Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 568
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 571
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/view/View;Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method
