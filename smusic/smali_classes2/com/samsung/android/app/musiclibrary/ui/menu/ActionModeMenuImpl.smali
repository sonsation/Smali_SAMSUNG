.class public Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;
.super Ljava/lang/Object;
.source "ActionModeMenuImpl.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;


# instance fields
.field protected mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "menuInflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 15
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/ActionMode;Landroid/view/Menu;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenuImpl;->mMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 22
    :cond_0
    return-void
.end method
