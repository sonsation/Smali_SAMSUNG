.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
.source "SeslSubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

.field private mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p3, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 45
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 88
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 87
    :goto_0
    return v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getItemId()I

    move-result v0

    .line 134
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 135
    const/4 v1, 0x0

    .line 137
    :goto_1
    return-object v1

    .line 133
    .end local v0    # "itemId":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .restart local v0    # "itemId":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 78
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderIconInt(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 114
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderTitleInt(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    check-cast v0, Landroid/view/SubMenu;

    return-object v0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 93
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setQwertyMode(Z)V

    .line 50
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->mParentMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setShortcutsVisible(Z)V

    .line 60
    return-void
.end method
