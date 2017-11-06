.class Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;
.super Ljava/lang/Object;
.source "ChangeImageSource.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;

.field final synthetic val$endImageResource:I

.field final synthetic val$mIsChanged:[Z

.field final synthetic val$startImageResource:I

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;Landroid/widget/ImageView;[ZII)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->this$0:Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$mIsChanged:[Z

    iput p4, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$endImageResource:I

    iput p5, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$startImageResource:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 65
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$view:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$view:Landroid/widget/ImageView;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 68
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$mIsChanged:[Z

    aget-boolean v1, v1, v4

    if-nez v1, :cond_1

    .line 69
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$view:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$endImageResource:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$mIsChanged:[Z

    aput-boolean v3, v1, v4

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$mIsChanged:[Z

    aget-boolean v1, v1, v3

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$view:Landroid/widget/ImageView;

    iget v2, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$startImageResource:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, p0, Lcom/samsung/android/app/music/common/view/transition/ChangeImageSource$1;->val$mIsChanged:[Z

    aput-boolean v3, v1, v3

    goto :goto_0
.end method
