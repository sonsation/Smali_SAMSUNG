.class Lcom/samsung/android/edgelighting/view/MorphView$3;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->hide(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/MorphView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/MorphView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/MorphView;

    .prologue
    .line 425
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsHiding:Z

    .line 439
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->reset()V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$3;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/edgelighting/view/MorphView;->mIsHiding:Z

    .line 434
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 444
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 428
    return-void
.end method
