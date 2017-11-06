.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field private mParentMenu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V
    .locals 0

    .prologue
    .line 690
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;

    .prologue
    .line 690
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    return-void
.end method


# virtual methods
.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->mParentMenu:Landroid/view/Menu;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 695
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const v2, 0x7f13000c

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 697
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 698
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 702
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 703
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->mParentMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 704
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->mParentMenu:Landroid/view/Menu;

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->access$600(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/view/Menu;)V

    .line 707
    return-void
.end method
