.class Lcom/android/launcher3/home/StageChangeListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# instance fields
.field private mAccessibilityEnabled:Z

.field private mShow:Z

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "accessibilityEnabled"    # Z
    .param p3, "show"    # Z

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/launcher3/home/StageChangeListener;->mView:Landroid/view/View;

    .line 92
    iput-boolean p2, p0, Lcom/android/launcher3/home/StageChangeListener;->mAccessibilityEnabled:Z

    .line 93
    iput-boolean p3, p0, Lcom/android/launcher3/home/StageChangeListener;->mShow:Z

    .line 94
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 98
    iget-boolean v1, p0, Lcom/android/launcher3/home/StageChangeListener;->mShow:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 99
    .local v0, "alpha":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/StageChangeListener;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 100
    iget-object v1, p0, Lcom/android/launcher3/home/StageChangeListener;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 101
    iget-object v1, p0, Lcom/android/launcher3/home/StageChangeListener;->mView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 102
    iget-object v1, p0, Lcom/android/launcher3/home/StageChangeListener;->mView:Landroid/view/View;

    iget-boolean v2, p0, Lcom/android/launcher3/home/StageChangeListener;->mAccessibilityEnabled:Z

    invoke-static {v1, v2}, Lcom/android/launcher3/home/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 103
    return-void

    .line 98
    .end local v0    # "alpha":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/home/StageChangeListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 109
    return-void
.end method
