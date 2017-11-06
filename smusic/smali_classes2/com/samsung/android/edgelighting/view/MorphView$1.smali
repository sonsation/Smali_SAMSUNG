.class Lcom/samsung/android/edgelighting/view/MorphView$1;
.super Ljava/lang/Object;
.source "MorphView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/MorphView;->show(J)V
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
    .line 331
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 348
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v4, 0xfa

    .line 339
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/MorphView;->isEmptyTickerText()Z

    move-result v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x64

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/edgelighting/view/MorphView;->access$000(Lcom/samsung/android/edgelighting/view/MorphView;FJJ)V

    .line 341
    iget-object v1, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v6, v0, Lcom/samsung/android/edgelighting/view/MorphView;->mMinWidth:I

    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/MorphView$1;->this$0:Lcom/samsung/android/edgelighting/view/MorphView;

    iget v7, v0, Lcom/samsung/android/edgelighting/view/MorphView;->mMaxWidth:I

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/edgelighting/view/MorphView;->changeNotificationWidth(JJII)V

    .line 343
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 353
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 335
    return-void
.end method
