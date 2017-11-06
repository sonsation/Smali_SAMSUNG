.class public abstract Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "AbsMilkActionModeSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "AbsActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;


# direct methods
.method protected constructor <init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

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
    .line 434
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->getBottomBarResId()I

    move-result v0

    .line 435
    .local v0, "resId":I
    if-nez v0, :cond_0

    .line 436
    const v0, 0x7f130009

    .line 438
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->getFragment()Landroid/app/Fragment;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 439
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 440
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 449
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 469
    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_0

    .line 470
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v3}, Landroid/view/ActionMode;->finish()V

    .line 472
    :cond_0
    return v4

    .line 451
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->getSelectedTracks()Ljava/util/List;

    move-result-object v1

    .line 452
    .local v1, "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->addPlayQueue(Ljava/util/List;I)V

    .line 454
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->sendSAPlayEvent()V

    goto :goto_0

    .line 457
    .end local v1    # "playTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->getSelectedTracks()Ljava/util/List;

    move-result-object v2

    .line 458
    .local v2, "playlistTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v3, v2}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->addToPlaylist(Ljava/util/List;)V

    .line 460
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->sendSAAddEvent()V

    goto :goto_0

    .line 463
    .end local v2    # "playlistTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "downloadTracks":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/music/common/model/SimpleTrack;>;"
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;

    invoke-virtual {v3, v0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;->download(Ljava/util/List;)V

    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;->sendSADownloadEvent()V

    goto :goto_0

    .line 449
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
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 444
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 445
    return-void
.end method

.method public abstract sendSAAddEvent()V
.end method

.method public abstract sendSADownloadEvent()V
.end method

.method public abstract sendSAPlayEvent()V
.end method
