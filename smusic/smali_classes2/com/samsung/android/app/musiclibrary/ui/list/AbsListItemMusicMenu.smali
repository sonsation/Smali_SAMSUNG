.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;
.super Ljava/lang/Object;
.source "AbsListItemMusicMenu.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;


# instance fields
.field private final mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "fragment":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    .line 21
    return-void
.end method


# virtual methods
.method public isEnabled(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 58
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract onCreateMusicMenu()Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
.end method

.method public onListItemMenuSelected(Landroid/view/View;IJ)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v6, 0x1

    .line 27
    sget v5, Lcom/samsung/android/app/musiclibrary/R$id;->list_item_more_menu:I

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 28
    .local v2, "menuItemButton":Landroid/view/View;
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    .local v3, "popupMenu":Landroid/widget/PopupMenu;
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;->mFragment:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v4

    .line 31
    .local v4, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v0

    .line 32
    .local v0, "choiceMode":I
    invoke-virtual {v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setChoiceMode(I)V

    .line 33
    invoke-virtual {v4, p2, v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;->onCreateMusicMenu()Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    move-result-object v1

    .line 36
    .local v1, "menu":Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 37
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 39
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$1;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 46
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;

    invoke-direct {v5, p0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsListItemMusicMenu;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;I)V

    invoke-virtual {v3, v5}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 53
    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    .line 54
    return-void
.end method
