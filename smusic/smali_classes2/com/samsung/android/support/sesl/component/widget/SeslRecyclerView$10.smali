.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->enableGoToTop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    .prologue
    .line 2955
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2976
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2968
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$4402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I

    .line 2969
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$3700(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2972
    :goto_0
    return-void

    .line 2970
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2974
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2960
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$10;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$4402(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2963
    :goto_0
    return-void

    .line 2961
    :catch_0
    move-exception v0

    goto :goto_0
.end method
