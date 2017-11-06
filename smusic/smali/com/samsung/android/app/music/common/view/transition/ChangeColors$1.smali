.class Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;
.super Ljava/lang/Object;
.source "ChangeColors.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/view/transition/ChangeColors;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/view/transition/ChangeColors;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/view/transition/ChangeColors;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/view/transition/ChangeColors;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;->this$0:Lcom/samsung/android/app/music/common/view/transition/ChangeColors;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;->val$view:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 67
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 68
    .local v0, "value":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;->val$view:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeColors$1;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 71
    :cond_0
    return-void
.end method
