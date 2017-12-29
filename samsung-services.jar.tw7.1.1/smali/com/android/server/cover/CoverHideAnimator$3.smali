.class Lcom/android/server/cover/CoverHideAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CoverHideAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverHideAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverHideAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverHideAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/cover/CoverHideAnimator;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/server/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/cover/CoverHideAnimator$3;->this$0:Lcom/android/server/cover/CoverHideAnimator;

    invoke-static {v0}, Lcom/android/server/cover/CoverHideAnimator;->-wrap2(Lcom/android/server/cover/CoverHideAnimator;)V

    .line 120
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 114
    return-void
.end method
