.class Lcom/android/launcher3/folder/view/FolderView$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onClose(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 1119
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$002(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 1123
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->onCloseComplete()V

    .line 1124
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    .line 1129
    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09003e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1128
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1300(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V

    .line 1130
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$15;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$002(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 1131
    return-void
.end method
