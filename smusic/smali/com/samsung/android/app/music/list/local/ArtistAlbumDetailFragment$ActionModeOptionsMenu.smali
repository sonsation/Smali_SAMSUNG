.class Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "ArtistAlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 219
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment;

    const v2, 0x7f130004

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistAlbumDetailFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 222
    return-void
.end method