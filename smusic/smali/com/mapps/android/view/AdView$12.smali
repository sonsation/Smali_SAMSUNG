.class Lcom/mapps/android/view/AdView$12;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    .line 2279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2282
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$33(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2283
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$23(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v1}, Lcom/mapps/android/view/AdView;->access$34(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 2293
    :goto_0
    return-void

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$35(Lcom/mapps/android/view/AdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2286
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$36(Lcom/mapps/android/view/AdView;Z)V

    .line 2291
    :goto_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    goto :goto_0

    .line 2288
    :cond_1
    iget-object v0, p0, Lcom/mapps/android/view/AdView$12;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mapps/android/view/AdView;->access$36(Lcom/mapps/android/view/AdView;Z)V

    goto :goto_1
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2296
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 2299
    return-void
.end method
