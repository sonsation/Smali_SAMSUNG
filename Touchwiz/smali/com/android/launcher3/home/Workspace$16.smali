.class Lcom/android/launcher3/home/Workspace$16;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;

.field final synthetic val$target:Landroid/view/View;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 2452
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$16;->this$0:Lcom/android/launcher3/home/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/home/Workspace$16;->val$target:Landroid/view/View;

    iput p3, p0, Lcom/android/launcher3/home/Workspace$16;->val$visibility:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace$16;->val$target:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/home/Workspace$16;->val$visibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2456
    return-void
.end method
