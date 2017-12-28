.class Lcom/android/launcher3/home/HomeTransitionAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getEnterFromFolderAnimation(ZLjava/util/HashMap;Landroid/view/View;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/HomeTransitionAnimation;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 245
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 246
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$102(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 251
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->animationComplete()V

    .line 242
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$1;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 237
    return-void
.end method
