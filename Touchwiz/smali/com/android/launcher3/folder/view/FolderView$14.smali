.class Lcom/android/launcher3/folder/view/FolderView$14;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onOpen(Landroid/animation/Animator;)V
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
    .line 1082
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$002(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 1093
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->setFocusOnFirstChild()V

    .line 1094
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    .line 1086
    invoke-static {v2}, Lcom/android/launcher3/folder/view/FolderView;->access$500(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/folder/view/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v2

    .line 1085
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1300(Lcom/android/launcher3/folder/view/FolderView;ILjava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$14;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderView;->access$002(Lcom/android/launcher3/folder/view/FolderView;I)I

    .line 1088
    return-void
.end method
