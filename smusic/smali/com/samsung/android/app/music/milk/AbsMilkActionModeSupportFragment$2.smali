.class Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;
.super Ljava/lang/Object;
.source "AbsMilkActionModeSupportFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionModeMenu:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p2, p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->newInstance(Landroid/app/Activity;Landroid/view/Menu;Landroid/view/ActionMode;Landroid/view/ActionMode$Callback;)Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->buttonEnabled(Z)V

    .line 109
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->onDestroy()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->setAdapterSelectMode(Z)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$2;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->buttonEnabled(Z)V

    .line 132
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method
