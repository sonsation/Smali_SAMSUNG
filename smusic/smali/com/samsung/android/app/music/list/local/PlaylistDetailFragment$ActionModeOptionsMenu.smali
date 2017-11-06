.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "PlaylistDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0

    .prologue
    .line 786
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$1;

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 789
    const/high16 v2, 0x7f130000

    .line 790
    .local v2, "resId":I
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "args_playlist_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 791
    .local v0, "playlistId":J
    const-wide/16 v4, -0xb

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 792
    const v2, 0x7f130003

    .line 795
    :cond_0
    new-instance v3, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {v3, v4, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 796
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v3, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 797
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 801
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 802
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$1300(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Landroid/view/Menu;)V

    .line 803
    return-void
.end method
