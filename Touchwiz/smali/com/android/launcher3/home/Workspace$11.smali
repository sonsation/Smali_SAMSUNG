.class Lcom/android/launcher3/home/Workspace$11;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/Workspace;->createCustomPlusPage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/Workspace;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/home/Workspace;

    .prologue
    .line 1744
    iput-object p1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1748
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1749
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-static {v1}, Lcom/android/launcher3/home/Workspace;->access$800(Lcom/android/launcher3/home/Workspace;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1750
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->addNewWorkspaceScreen()J

    .line 1755
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 1752
    .restart local v0    # "index":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace$11;->this$0:Lcom/android/launcher3/home/Workspace;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    goto :goto_0
.end method
