.class Lcom/android/launcher3/home/HotseatCellLayout$5;
.super Ljava/lang/Object;
.source "HotseatCellLayout.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HotseatCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/home/HotseatCellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatCellLayout;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/home/HotseatCellLayout;

    .prologue
    .line 458
    iput-object p1, p0, Lcom/android/launcher3/home/HotseatCellLayout$5;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$5;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$5;->cancelled:Z

    .line 477
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$5;->cancelled:Z

    if-eqz v0, :cond_0

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$5;->cancelled:Z

    .line 472
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$5;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-static {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->access$000(Lcom/android/launcher3/home/HotseatCellLayout;)Lcom/android/launcher3/home/Hotseat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Hotseat;->changeGrid(Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 481
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 463
    return-void
.end method
