.class Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;
.super Ljava/lang/Object;
.source "WarnView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->internalInitialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;I)I

    .line 95
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->onCancel()V

    .line 96
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$008(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I

    .line 75
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->getMaxStatus()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-static {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$000(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;)I

    move-result v0

    if-gez v0, :cond_1

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->onEnd()V

    .line 90
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-static {v0, v2}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->access$002(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;I)I

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    new-instance v1, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2$1;-><init>(Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->onRepeat()V

    .line 101
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView$2;->this$0:Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/progressfingerscan/object/WarnView;->onStart()V

    .line 70
    return-void
.end method
