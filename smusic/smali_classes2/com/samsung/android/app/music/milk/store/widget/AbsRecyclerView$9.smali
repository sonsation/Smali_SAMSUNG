.class Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;
.super Ljava/lang/Object;
.source "AbsRecyclerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->enableGoToTop(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    .prologue
    .line 707
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 727
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 717
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$602(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;I)I

    .line 718
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$300(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 724
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 710
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView$9;->this$0:Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;->access$602(Lcom/samsung/android/app/music/milk/store/widget/AbsRecyclerView;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    goto :goto_0
.end method
