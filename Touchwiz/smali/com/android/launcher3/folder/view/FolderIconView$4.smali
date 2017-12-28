.class Lcom/android/launcher3/folder/view/FolderIconView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderIconView;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderIconView;

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderIconView;

    .prologue
    .line 1110
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$4;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$4;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$602(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z

    .line 1119
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1120
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$4;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1122
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderIconView$4;->this$0:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/folder/view/FolderIconView;->access$602(Lcom/android/launcher3/folder/view/FolderIconView;Z)Z

    .line 1114
    return-void
.end method
