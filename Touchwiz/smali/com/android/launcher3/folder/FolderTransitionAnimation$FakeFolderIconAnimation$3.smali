.class Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->animateClose(Landroid/animation/AnimatorSet;Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;Landroid/view/View;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 3

    .prologue
    .line 587
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;->val$iconView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 588
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->this$0:Lcom/android/launcher3/folder/FolderTransitionAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation;->access$400(Lcom/android/launcher3/folder/FolderTransitionAnimation;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    .line 589
    .local v0, "dragLayer":Lcom/android/launcher3/common/view/DragLayer;
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;->this$1:Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;->access$700(Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    .line 590
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 583
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderTransitionAnimation$FakeFolderIconAnimation$3;->animationComplete()V

    .line 584
    return-void
.end method
