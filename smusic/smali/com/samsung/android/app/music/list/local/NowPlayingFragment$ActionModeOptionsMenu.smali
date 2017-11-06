.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "NowPlayingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0

    .prologue
    .line 579
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    return-void
.end method

.method private updateShareItem(Landroid/view/Menu;)V
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v10, -0x1

    .line 595
    const v8, 0x7f12001c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 596
    .local v5, "item":Landroid/view/MenuItem;
    if-nez v5, :cond_0

    .line 630
    :goto_0
    return-void

    .line 600
    :cond_0
    const/4 v6, 0x1

    .line 601
    .local v6, "shareMenuVisible":Z
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getCheckedItemCount()I

    move-result v8

    if-lez v8, :cond_5

    .line 602
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .line 603
    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 604
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    .line 605
    .local v7, "size":I
    const/4 v3, -0x1

    .line 607
    .local v3, "cpAttrsColIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_2

    .line 608
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 609
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 610
    .local v0, "c":Landroid/database/Cursor;
    if-ne v3, v10, :cond_1

    .line 611
    const-string v8, "cp_attrs"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 613
    :cond_1
    if-ne v3, v10, :cond_3

    .line 614
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isLocalTrack()Z

    move-result v6

    .line 629
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v3    # "cpAttrsColIndex":I
    .end local v4    # "i":I
    .end local v7    # "size":I
    :cond_2
    :goto_2
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 617
    .restart local v0    # "c":Landroid/database/Cursor;
    .restart local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .restart local v3    # "cpAttrsColIndex":I
    .restart local v4    # "i":I
    .restart local v7    # "size":I
    :cond_3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 619
    .local v2, "cpAttrs":I
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->isLocal(I)Z

    move-result v6

    .line 620
    if-eqz v6, :cond_2

    .line 607
    .end local v0    # "c":Landroid/database/Cursor;
    .end local v2    # "cpAttrs":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 627
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v3    # "cpAttrsColIndex":I
    .end local v4    # "i":I
    .end local v7    # "size":I
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 582
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const v2, 0x7f13000a

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 585
    const v0, 0x7f12059f

    invoke-interface {p2, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 586
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 590
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 591
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ActionModeOptionsMenu;->updateShareItem(Landroid/view/Menu;)V

    .line 592
    return-void
.end method
