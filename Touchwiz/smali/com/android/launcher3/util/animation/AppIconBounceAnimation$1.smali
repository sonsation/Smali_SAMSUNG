.class Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;
.super Ljava/lang/Object;
.source "AppIconBounceAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 46
    .local v0, "r":F
    iget-object v1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 47
    iget-object v1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 48
    iget-object v1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 50
    iget-object v1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$1;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$100(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 52
    :cond_0
    return-void
.end method
