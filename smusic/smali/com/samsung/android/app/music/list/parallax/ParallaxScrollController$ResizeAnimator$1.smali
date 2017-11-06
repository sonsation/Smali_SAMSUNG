.class Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$1;
.super Ljava/lang/Object;
.source "ParallaxScrollController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$1;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 523
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 524
    .local v0, "value":I
    invoke-static {}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$1;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    .line 525
    invoke-static {v3}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->access$2000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;)Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onAnimationUpdate() - value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$1;->this$0:Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;->access$2000(Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator;)Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/list/parallax/ParallaxScrollController$ResizeAnimator$ResizeAnimatable;->performAnimation(I)V

    .line 527
    return-void
.end method
