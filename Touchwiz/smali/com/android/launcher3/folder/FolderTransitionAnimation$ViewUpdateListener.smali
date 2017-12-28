.class Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewUpdateListener"
.end annotation


# instance fields
.field private mTargetView:Landroid/view/View;

.field private mToBeShown:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "show"    # Z

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    .line 56
    iput-boolean p2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mToBeShown:Z

    .line 57
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 62
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mToBeShown:Z

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 67
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 72
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mToBeShown:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 77
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 82
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mToBeShown:Z

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$ViewUpdateListener;->mTargetView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
