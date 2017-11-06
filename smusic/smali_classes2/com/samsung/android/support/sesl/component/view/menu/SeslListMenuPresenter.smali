.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;
.super Ljava/lang/Object;
.source "SeslListMenuPresenter.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mItemLayoutRes:I

    .line 83
    iput p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mThemeRes:I

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;-><init>(II)V

    .line 72
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 88
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 97
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 101
    :cond_1
    return-void

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 158
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;I)Z

    .line 174
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 226
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "state":Landroid/os/Parcelable;
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 215
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    if-nez v1, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 221
    :goto_0
    return-object v0

    .line 219
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 2
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 150
    :goto_0
    return v0

    .line 146
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    .line 150
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 198
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 199
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_0

    .line 200
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 202
    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 191
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 194
    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 195
    return-void
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 139
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mId:I

    .line 206
    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mItemIndexOffset:I

    .line 166
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslExpandedMenuView;

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->updateMenuView(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->mAdapter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 134
    :cond_0
    return-void
.end method
