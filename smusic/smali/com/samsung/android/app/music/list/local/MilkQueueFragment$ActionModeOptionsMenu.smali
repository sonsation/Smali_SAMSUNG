.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "MilkQueueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment$1;

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V

    return-void
.end method

.method private updateDownloadItem(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, -0x1

    .line 838
    const v8, 0x7f12059f

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 839
    .local v6, "item":Landroid/view/MenuItem;
    if-nez v6, :cond_0

    .line 873
    :goto_0
    return-void

    .line 843
    :cond_0
    const/4 v4, 0x1

    .line 844
    .local v4, "downloadMenuEnabled":Z
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getCheckedItemCount()I

    move-result v8

    if-lez v8, :cond_6

    .line 845
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .line 846
    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 847
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_4

    const/4 v7, 0x0

    .line 848
    .local v7, "size":I
    :goto_1
    const/4 v3, -0x1

    .line 850
    .local v3, "cpAttrsColIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v7, :cond_3

    .line 851
    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 852
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 853
    .local v0, "c":Landroid/database/Cursor;
    if-ne v3, v10, :cond_1

    .line 854
    const-string v8, "cp_attrs"

    .line 855
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 858
    :cond_1
    if-eq v3, v10, :cond_5

    .line 859
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 860
    .local v2, "cpAttrs":I
    const v8, 0x80002

    if-eq v2, v8, :cond_2

    .line 861
    const/4 v4, 0x0

    .line 863
    :cond_2
    if-nez v4, :cond_5

    .line 872
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v2    # "cpAttrs":I
    .end local v3    # "cpAttrsColIndex":I
    .end local v5    # "i":I
    .end local v7    # "size":I
    :cond_3
    :goto_3
    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 847
    .restart local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    :cond_4
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    goto :goto_1

    .line 850
    .restart local v3    # "cpAttrsColIndex":I
    .restart local v5    # "i":I
    .restart local v7    # "size":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 870
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v3    # "cpAttrsColIndex":I
    .end local v5    # "i":I
    .end local v7    # "size":I
    :cond_6
    const/4 v4, 0x0

    goto :goto_3
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 821
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    const v3, 0x7f13000a

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 823
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 824
    const v1, 0x7f12001c

    invoke-interface {p2, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 825
    const v1, 0x7f1205ad

    invoke-interface {p2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 826
    .local v0, "addItem":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 827
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 829
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 833
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 834
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$ActionModeOptionsMenu;->updateDownloadItem(Landroid/view/Menu;)V

    .line 835
    return-void
.end method
