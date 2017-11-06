.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .prologue
    .line 8406
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 8414
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

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
    .line 8434
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 8419
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8421
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setLongClickable(Z)V

    .line 8422
    const/4 v0, 0x1

    .line 8424
    :cond_0
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x1

    .line 8439
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 8440
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 8443
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->clearChoices()V

    .line 8445
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput-boolean v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    .line 8446
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->rememberSyncState()V

    .line 8447
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->requestLayout()V

    .line 8449
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setLongClickable(Z)V

    .line 8450
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .prologue
    .line 8455
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 8458
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    .line 8459
    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$5200(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8460
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 8462
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 8429
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    .prologue
    .line 8410
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeWrapper;->mWrapped:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$MultiChoiceModeListener;

    .line 8411
    return-void
.end method
