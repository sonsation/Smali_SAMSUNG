.class public Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
.source "SeslMenuPopupWindow.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 139
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 140
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 141
    .local v0, "config":Landroid/content/res/Configuration;
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 142
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 143
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_0
    iput v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 146
    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 156
    return-void
.end method

.method public bridge synthetic hasFocus()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasWindowFocus()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFocused()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isInTouchMode()Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isInTouchMode()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    if-eqz v9, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 187
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_3

    move-object v1, v0

    .line 188
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 189
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 190
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    .line 197
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    :goto_0
    const/4 v6, 0x0

    .line 198
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    .line 200
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 201
    sub-int v3, v8, v2

    .line 202
    .local v3, "itemPosition":I
    if-ltz v3, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 203
    invoke-virtual {v5, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v6

    .line 208
    .end local v3    # "itemPosition":I
    .end local v8    # "position":I
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 209
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_2

    .line 210
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getAdapterMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v4

    .line 211
    .local v4, "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    if-eqz v7, :cond_1

    .line 212
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    invoke-interface {v9, v4, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;->onItemHoverExit(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)V

    .line 215
    :cond_1
    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 217
    if-eqz v6, :cond_2

    .line 218
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    invoke-interface {v9, v4, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;->onItemHoverEnter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)V

    .line 223
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .end local v5    # "menuAdapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 192
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v5, v0

    .line 193
    check-cast v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    .restart local v5    # "menuAdapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;

    .line 161
    .local v0, "selectedItem":Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v1, :cond_1

    .line 162
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getItemData()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v1

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v4

    .line 163
    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    move v1, v2

    .line 176
    :goto_0
    return v1

    .line 169
    :cond_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v1, :cond_2

    .line 170
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->setSelection(I)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getAdapterMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    move v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHoverListener(Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow$MenuDropDownListView;->mHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    .line 152
    return-void
.end method
