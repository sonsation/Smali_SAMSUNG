.class public abstract Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "MilkSearchStoreSongsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbsActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    .prologue
    .line 436
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBottomBarResId()I
.end method

.method public abstract getFragment()Landroid/app/Fragment;
.end method

.method public abstract getSelectedTracks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation
.end method

.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->getBottomBarResId()I

    move-result v0

    .line 446
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 447
    const v0, 0x7f130009

    .line 449
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 450
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 451
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 469
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1800(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1900(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isSelectMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 494
    :cond_0
    :goto_0
    return v2

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->getSelectedTracks()Ljava/util/List;

    move-result-object v1

    .line 474
    .local v1, "selectedTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 488
    :goto_1
    :pswitch_0
    if-eqz v1, :cond_2

    .line 489
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "search"

    invoke-static {v2, v1, v3}, Lcom/samsung/android/app/music/common/util/SmartStationUtils;->createSmartStationSeedAsync(Landroid/content/Context;Ljava/util/Collection;Ljava/lang/String;)V

    .line 493
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v2, v2, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 494
    const/4 v2, 0x1

    goto :goto_0

    .line 476
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v3, v1, v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$800(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;Z)V

    goto :goto_1

    .line 479
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    .line 480
    invoke-virtual {v2, v4, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->addMilkTrackList(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/List;)[J

    move-result-object v0

    .line 482
    .local v0, "playIdListPlaylist":[J
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v4}, Lcom/samsung/android/app/music/common/activity/AddtoPlaylistActivity;->startActivity(Landroid/app/Activity;[JLandroid/os/Bundle;)V

    goto :goto_1

    .line 485
    .end local v0    # "playIdListPlaylist":[J
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v2, v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$2000(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;Ljava/util/List;)V

    goto :goto_1

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x7f12059c
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 455
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 457
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1600(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->isSelectMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->access$1700(Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;)Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/LoadMoreArrayRecyclerAdapter;->getSelectedItemCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 459
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f12059c

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 460
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 461
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f12059d

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 462
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;

    iget-object v1, v1, Lcom/samsung/android/app/music/milk/store/search/impl/MilkSearchStoreSongsFragment;->mBottomBarMenuManager:Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/menu/BottomBarMenuManager;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f12059f

    invoke-interface {v1, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 463
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 465
    .end local v0    # "enable":Z
    :cond_0
    return-void

    .line 458
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
