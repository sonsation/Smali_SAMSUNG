.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;
.super Ljava/lang/Object;
.source "MusicRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeListenerWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 729
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 730
    .local v0, "handled":Z
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 731
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$502(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 749
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->clearChoices()V

    .line 750
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;)V

    .line 755
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    .prologue
    .line 724
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListenerWrapper;->mWrapped:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$ActionModeListener;

    .line 725
    return-void
.end method
