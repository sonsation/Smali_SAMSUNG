.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    .prologue
    .line 8347
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 8355
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 8375
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 8360
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8362
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setLongClickable(Z)V

    .line 8363
    const/4 v0, 0x1

    .line 8365
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 8380
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 8381
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8384
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->clearChoices()V

    .line 8386
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->mDataChanged:Z

    .line 8387
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->rememberSyncState()V

    .line 8388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->requestLayout()V

    .line 8390
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->setLongClickable(Z)V

    .line 8391
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 8396
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8399
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$4200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8400
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 8402
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 8370
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    .prologue
    .line 8351
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$MultiChoiceModeListener;

    .line 8352
    return-void
.end method
