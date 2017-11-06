.class Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SeslViewPropertyAnimatorCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field final synthetic val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 692
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 693
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 698
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$1;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 703
    return-void
.end method
