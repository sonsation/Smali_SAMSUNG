.class Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToNaturalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v0, v0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$3;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->hideFolderAccept(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;)V

    .line 414
    :cond_0
    return-void
.end method
