.class Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.source "RadioHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$1;

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 364
    const v0, 0x7f130007

    .line 366
    .local v0, "resId":I
    new-instance v1, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/app/music/common/menu/ListMenuGroup;-><init>(Landroid/app/Fragment;I)V

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 367
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 368
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 372
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V

    .line 373
    const v0, 0x7f1205a0

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/radiohistory/RadioHistoryFragment;->getCheckedItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 374
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
