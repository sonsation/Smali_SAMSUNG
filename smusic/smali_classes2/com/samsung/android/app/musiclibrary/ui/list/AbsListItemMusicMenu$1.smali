.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$1;
.super Ljava/lang/Object;
.source "AbsListItemMusicMenu.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;->onListItemMenuSelected(Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;

.field final synthetic val$menu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$1;->val$menu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$1;->val$menu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
