.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;
.super Ljava/lang/Object;
.source "ListMenuGroup.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PlaylistMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private performMenuRenamePlaylist(Landroid/view/MenuItem;)V
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 589
    const/4 v1, 0x0

    .line 590
    .local v1, "updateTitle":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    if-eqz v2, :cond_1

    .line 591
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)[J

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "selectedPlaylistId":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->showEditTitleDialog(Ljava/lang/String;Z)V

    .line 600
    .end local v0    # "selectedPlaylistId":Ljava/lang/String;
    :cond_0
    return-void

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    instance-of v2, v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz v2, :cond_0

    .line 596
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 597
    .restart local v0    # "selectedPlaylistId":Ljava/lang/String;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showEditTitleDialog(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "playlistId"    # Ljava/lang/String;
    .param p2, "updateTitle"    # Z

    .prologue
    const/4 v5, 0x0

    .line 603
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 604
    .local v1, "fm":Landroid/app/FragmentManager;
    sget-boolean v4, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v4, :cond_1

    .line 605
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 606
    invoke-static {v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 607
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 606
    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->isSyncPlaylist(Landroid/content/Context;J)Z

    move-result v2

    .line 608
    .local v2, "isSync":Z
    if-eqz v2, :cond_1

    .line 609
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 610
    invoke-static {v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 611
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 610
    invoke-static {v4, v6, v7}, Lcom/samsung/android/app/music/milk/util/ResolverUtils$Playlist;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "sourcePlaylistId":Ljava/lang/String;
    const-string v4, "edit_online_playlist"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 614
    new-instance v4, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;

    invoke-direct {v4}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;-><init>()V

    .line 616
    invoke-static {p1, v3, p2}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->getNewInstance(Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;

    move-result-object v0

    .line 617
    .local v0, "edf":Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 618
    const-string v4, "edit_online_playlist"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 630
    .end local v0    # "edf":Lcom/samsung/android/app/music/common/dialog/EditOnlinePlaylistDialogFragment;
    .end local v2    # "isSync":Z
    .end local v3    # "sourcePlaylistId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const-string v4, "edit_playlist"

    invoke-virtual {v1, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-nez v4, :cond_0

    .line 626
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->getNewInstance(Ljava/lang/String;Z)Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;

    move-result-object v0

    .line 627
    .local v0, "edf":Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;
    iget-object v4, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v4

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 628
    const-string v4, "edit_playlist"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/app/music/common/dialog/EditPlaylistDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateBottomBarMenuEnableRenameActionMode(Landroid/view/Menu;I)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x1

    .line 580
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 581
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 585
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v2

    if-lez v2, :cond_1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateMenuVisibleAddToPlaylistMultipleItems(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 572
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 573
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 577
    :goto_0
    return-void

    .line 576
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$300(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 541
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 551
    const/4 v0, 0x1

    .line 552
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 565
    const/4 v0, 0x0

    .line 568
    :goto_0
    return v0

    .line 554
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->performMenuRenamePlaylist(Landroid/view/MenuItem;)V

    .line 555
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "1166"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :sswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)[J

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$1400(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)[J

    move-result-object v1

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->showEditTitleDialog(Ljava/lang/String;Z)V

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "1066"

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$800(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :sswitch_data_0
    .sparse-switch
        0x7f1205af -> :sswitch_1
        0x7f1205e5 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 545
    const v0, 0x7f1205ad

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->updateMenuVisibleAddToPlaylistMultipleItems(Landroid/view/Menu;I)V

    .line 546
    const v0, 0x7f1205af

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$PlaylistMenu;->updateBottomBarMenuEnableRenameActionMode(Landroid/view/Menu;I)V

    .line 547
    return-void
.end method
