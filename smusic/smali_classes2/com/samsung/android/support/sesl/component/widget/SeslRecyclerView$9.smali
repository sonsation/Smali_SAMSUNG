.class Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$9;
.super Ljava/lang/Object;
.source "SeslRecyclerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    .line 2944
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 2947
    :try_start_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2948
    .local v0, "value":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->access$4300(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2949
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$9;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2952
    .end local v0    # "value":I
    :goto_0
    return-void

    .line 2950
    :catch_0
    move-exception v1

    goto :goto_0
.end method
