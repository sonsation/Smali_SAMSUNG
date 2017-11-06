.class Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;
.super Ljava/lang/Object;
.source "SeslViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setUpdateListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field final synthetic val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;->this$0:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    iput-object p2, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;->val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    iput-object p3, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 731
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;->val$listener:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat$2;->val$view:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V

    .line 732
    return-void
.end method
