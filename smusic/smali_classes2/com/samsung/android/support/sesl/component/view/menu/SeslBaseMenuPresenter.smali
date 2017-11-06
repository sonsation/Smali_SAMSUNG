.class public abstract Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;
.super Ljava/lang/Object;
.source "SeslBaseMenuPresenter.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuLayoutRes"    # I
    .param p3, "itemLayoutRes"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    .line 63
    iput p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuLayoutRes:I

    .line 64
    iput p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mItemLayoutRes:I

    .line 65
    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "childIndex"    # I

    .prologue
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 133
    .local v0, "currentParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 137
    return-void
.end method

.method public abstract bindItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 146
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 147
    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 180
    instance-of v1, p2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 181
    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .line 185
    .local v0, "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->bindItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;)V

    .line 186
    check-cast v0, Landroid/view/View;

    .end local v0    # "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
    return-object v0

    .line 183
    :cond_0
    invoke-virtual {p0, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    move-result-object v0

    .restart local v0    # "itemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    .line 78
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;->initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->updateMenuView(Z)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mContext:Landroid/content/Context;

    .line 70
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 72
    return-void
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 212
    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    move-result v0

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 152
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mId:I

    .line 239
    return-void
.end method

.method public shouldIncludeItem(ILcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10
    .param p1, "cleared"    # Z

    .prologue
    .line 89
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 90
    .local v7, "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_1

    .line 123
    :cond_0
    return-void

    .line 92
    :cond_1
    const/4 v0, 0x0

    .line 93
    .local v0, "childIndex":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v9, :cond_6

    .line 94
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->flagActionItems()V

    .line 95
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v8

    .line 96
    .local v8, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 97
    .local v4, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 98
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 99
    .local v3, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->shouldIncludeItem(ILcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 100
    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 101
    .local v1, "convertView":Landroid/view/View;
    instance-of v9, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    if-eqz v9, :cond_5

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .line 102
    invoke-interface {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;->getItemData()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v6

    .line 103
    .local v6, "oldItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_1
    invoke-virtual {p0, v3, v1, v7}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->getItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 104
    .local v5, "itemView":Landroid/view/View;
    if-eq v3, v6, :cond_2

    .line 106
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/view/View;->setPressed(Z)V

    .line 107
    invoke-virtual {v5}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 109
    :cond_2
    if-eq v5, v1, :cond_3

    .line 110
    invoke-virtual {p0, v5, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    .line 112
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 97
    .end local v1    # "convertView":Landroid/view/View;
    .end local v5    # "itemView":Landroid/view/View;
    .end local v6    # "oldItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .restart local v1    # "convertView":Landroid/view/View;
    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    .line 118
    .end local v1    # "convertView":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v4    # "itemCount":I
    .end local v8    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_6
    :goto_2
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-ge v0, v9, :cond_0

    .line 119
    invoke-virtual {p0, v7, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method
