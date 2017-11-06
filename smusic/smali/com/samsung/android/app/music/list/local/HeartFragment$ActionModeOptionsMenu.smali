.class Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0

    .prologue
    .line 607
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;Lcom/samsung/android/app/music/list/local/HeartFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/HeartFragment$1;

    .prologue
    .line 607
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V

    return-void
.end method

.method private checkDeleteEnabled()Z
    .locals 10

    .prologue
    .line 657
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCheckedItemCount()I

    move-result v7

    if-nez v7, :cond_1

    .line 658
    const/4 v2, 0x0

    .line 673
    :cond_0
    :goto_0
    return v2

    .line 660
    :cond_1
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    .line 661
    .local v5, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 662
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    .line 663
    .local v6, "size":I
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v7}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    .line 664
    .local v0, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    const/4 v2, 0x1

    .line 665
    .local v2, "deleteEnabled":Z
    const-wide/16 v8, -0xb

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "favoriteKeyword":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 667
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 668
    invoke-virtual {v1, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 669
    const/4 v2, 0x0

    .line 670
    goto :goto_0

    .line 666
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 610
    new-instance v0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const v2, 0x7f130002

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 612
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 10
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x0

    .line 616
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 617
    const v8, 0x7f1205a0

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 618
    .local v5, "menuItem":Landroid/view/MenuItem;
    if-eqz v5, :cond_0

    .line 619
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->checkDeleteEnabled()Z

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 622
    :cond_0
    sget-boolean v8, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v8, :cond_6

    .line 623
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getCheckedItemCount()I

    move-result v8

    if-lez v8, :cond_2

    const/4 v3, 0x1

    .line 624
    .local v3, "itemEnabled":Z
    :goto_0
    if-eqz v3, :cond_4

    .line 625
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 626
    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 627
    .local v1, "checkedItemPositions":Landroid/util/SparseBooleanArray;
    if-nez v1, :cond_3

    .line 628
    .local v7, "size":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_4

    .line 629
    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 630
    iget-object v8, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    .line 631
    invoke-virtual {v8}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v8

    .line 630
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 632
    .local v4, "listType":I
    packed-switch v4, :pswitch_data_0

    .line 628
    .end local v4    # "listType":I
    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    .end local v3    # "itemEnabled":Z
    .end local v7    # "size":I
    :cond_2
    move v3, v7

    .line 623
    goto :goto_0

    .line 627
    .restart local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .restart local v3    # "itemEnabled":Z
    :cond_3
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    goto :goto_1

    .line 636
    .restart local v2    # "i":I
    .restart local v4    # "listType":I
    .restart local v7    # "size":I
    :pswitch_0
    const/4 v3, 0x0

    .line 637
    goto :goto_3

    .line 644
    .end local v1    # "checkedItemPositions":Landroid/util/SparseBooleanArray;
    .end local v2    # "i":I
    .end local v4    # "listType":I
    .end local v7    # "size":I
    :cond_4
    const v8, 0x7f12059c

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 645
    .local v6, "playItem":Landroid/view/MenuItem;
    if-eqz v6, :cond_5

    .line 646
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 649
    :cond_5
    const v8, 0x7f12059d

    invoke-interface {p2, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 650
    .local v0, "addItem":Landroid/view/MenuItem;
    if-eqz v6, :cond_6

    .line 651
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 654
    .end local v0    # "addItem":Landroid/view/MenuItem;
    .end local v3    # "itemEnabled":Z
    .end local v6    # "playItem":Landroid/view/MenuItem;
    :cond_6
    return-void

    .line 632
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
