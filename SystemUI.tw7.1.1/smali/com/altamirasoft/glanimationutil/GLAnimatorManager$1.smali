.class Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;
.super Ljava/lang/Object;
.source "GLAnimatorManager.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->startAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;


# direct methods
.method constructor <init>(Lcom/altamirasoft/glanimationutil/GLAnimatorManager;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;->this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;->this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    iget-boolean v0, v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->visible:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;->this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->doFrame()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager$1;->this$0:Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    iget-boolean v0, v0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->mIsSleepMode:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method
