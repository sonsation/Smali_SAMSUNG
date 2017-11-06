.class Lcom/samsung/android/edgelighting/view/EdgeToastView$3;
.super Ljava/lang/Object;
.source "EdgeToastView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeToastView;->hide(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeToastView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeToastView;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 295
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIsHiding:Z

    .line 296
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/edgelighting/view/EdgeToastView;->reset(Z)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeToastView$3;->this$0:Lcom/samsung/android/edgelighting/view/EdgeToastView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/edgelighting/view/EdgeToastView;->mIsHiding:Z

    .line 291
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 301
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 285
    return-void
.end method
