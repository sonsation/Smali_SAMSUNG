.class Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;
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
    name = "SelectedItemPlayableMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .prologue
    .line 502
    iput-object p1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateMenuVisibleQueueableBottomBar(Landroid/view/Menu;I)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I

    .prologue
    .line 529
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 530
    .local v0, "item":Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 533
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

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
    .line 506
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 515
    const/4 v0, 0x1

    .line 516
    .local v0, "handled":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 523
    const/4 v0, 0x0

    .line 525
    :goto_0
    return v0

    .line 518
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$700(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SelectedItemPlayable;->play()V

    .line 519
    iget-object v1, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    const-string v2, "1022"

    iget-object v3, p0, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;->this$0:Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    .line 520
    invoke-static {v3}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$600(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;)I

    move-result v3

    int-to-long v4, v3

    .line 519
    invoke-static {v1, v2, v4, v5}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;->access$900(Lcom/samsung/android/app/music/common/menu/ListMenuGroup;Ljava/lang/String;J)V

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x7f12059c
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 510
    const v0, 0x7f12059c

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup$SelectedItemPlayableMenu;->updateMenuVisibleQueueableBottomBar(Landroid/view/Menu;I)V

    .line 511
    return-void
.end method
