.class Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$4;
.super Ljava/lang/Object;
.source "EdgeNotiLightEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->showArcAnimation1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$4;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView$4;->this$0:Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/edgelighting/view/EdgeNotiLightEffectView;->showArcAnimation2()V

    .line 185
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 195
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 180
    return-void
.end method
