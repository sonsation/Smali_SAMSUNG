.class public final Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
.super Ljava/lang/Object;
.source "SeslMenuItemImpl.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final CHECKABLE:I = 0x1

.field private static final CHECKED:I = 0x2

.field private static final ENABLED:I = 0x10

.field private static final EXCLUSIVE:I = 0x4

.field private static final HIDDEN:I = 0x8

.field private static final IS_ACTION:I = 0x20

.field static final NO_ICON:I = 0x0

.field private static final SHOW_AS_ACTION_MASK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SeslMenuItemImpl"


# instance fields
.field private mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

.field private mActionView:Landroid/view/View;

.field private mBadgeText:Ljava/lang/String;

.field private final mCategoryOrder:I

.field private mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mFlags:I

.field private final mGroup:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private final mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIsActionViewExpanded:Z

.field private mItemCallback:Ljava/lang/Runnable;

.field mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field private mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

.field private final mOrdering:I

.field private mShortcutAlphabeticChar:C

.field private mShortcutNumericChar:C

.field private mShowAsAction:I

.field private mSubMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleCondensed:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;IIIILjava/lang/CharSequence;I)V
    .locals 2
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "group"    # I
    .param p3, "id"    # I
    .param p4, "categoryOrder"    # I
    .param p5, "ordering"    # I
    .param p6, "title"    # Ljava/lang/CharSequence;
    .param p7, "showAsAction"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconResId:I

    .line 78
    const/16 v0, 0x10

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 86
    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    .line 91
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIsActionViewExpanded:Z

    .line 139
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 140
    iput p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mId:I

    .line 141
    iput p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mGroup:I

    .line 142
    iput p4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mCategoryOrder:I

    .line 143
    iput p5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOrdering:I

    .line 144
    iput-object p6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 145
    iput p7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    .line 146
    return-void
.end method


# virtual methods
.method public actionFormatChanged()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemActionRequestChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    .line 550
    return-void
.end method

.method public collapseActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 690
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return v0

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_2

    .line 695
    const/4 v0, 0x1

    goto :goto_0

    .line 698
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 699
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public expandActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 676
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return v0

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 681
    invoke-interface {v1, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    move-result v0

    goto :goto_0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 2

    .prologue
    .line 640
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItem.getActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    .line 628
    :goto_0
    return-object v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    .line 626
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    goto :goto_0

    .line 628
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphabeticShortcut()C
    .locals 1

    .prologue
    .line 243
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutAlphabeticChar:C

    return v0
.end method

.method public getBadgeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mBadgeText:Ljava/lang/String;

    return-object v0
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mGroup:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 412
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 423
    :goto_0
    return-object v0

    .line 416
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconResId:I

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconResId:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 418
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconResId:I

    .line 419
    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 423
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getItemId()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 209
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mId:I

    return v0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method public getNumericShortcut()C
    .locals 1

    .prologue
    .line 261
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutNumericChar:C

    return v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mCategoryOrder:I

    return v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOrdering:I

    return v0
.end method

.method getShortcut()C
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->isQwertyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutAlphabeticChar:C

    :goto_0
    return v0

    :cond_0
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutNumericChar:C

    goto :goto_0
.end method

.method getShortcutLabel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getShortcut()C

    move-result v1

    .line 302
    .local v1, "shortcut":C
    if-nez v1, :cond_0

    .line 303
    const-string v2, ""

    .line 326
    :goto_0
    return-object v2

    .line 306
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mSubMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    return-object v0
.end method

.method public getSupportActionProvider()Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
    .locals 1

    .prologue
    .line 646
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method getTitleForItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "itemView"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .prologue
    .line 368
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;->prefersCondensedTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    :goto_0
    return-object v0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCollapsibleActionView()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 707
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    invoke-virtual {v1, p0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 713
    :cond_1
    return v0
.end method

.method public hasSubMenu()Z
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mSubMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invoke()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 154
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v2, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    :goto_0
    return v1

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getRootMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->dispatchMenuItemSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/MenuItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 163
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 169
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "SeslMenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->onPerformDefaultAction()Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActionButton()Z
    .locals 2

    .prologue
    .line 560
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActionViewExpanded()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIsActionViewExpanded:Z

    return v0
.end method

.method public isCheckable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 448
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChecked()Z
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusiveCheckable()Z
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 498
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->overridesItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 499
    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 499
    goto :goto_0

    .line 501
    :cond_2
    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public requestsActionButton()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 564
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requiresActionButton()Z
    .locals 2

    .prologue
    .line 568
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "actionProvider"    # Landroid/view/ActionProvider;

    .prologue
    .line 634
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is not supported, use MenuItem.setActionProvider()"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setActionView(I)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setActionView(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setActionView(I)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 614
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 615
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 616
    .local v1, "inflater":Landroid/view/LayoutInflater;
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setActionView(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;

    .line 617
    return-object p0
.end method

.method public setActionView(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    .line 605
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mId:I

    if-lez v0, :cond_0

    .line 606
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemActionRequestChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    .line 609
    return-object p0
.end method

.method public setActionViewExpanded(Z)V
    .locals 2
    .param p1, "isExpanded"    # Z

    .prologue
    .line 717
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIsActionViewExpanded:Z

    .line 718
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 719
    return-void
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "alphaChar"    # C

    .prologue
    .line 248
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutAlphabeticChar:C

    if-ne v0, p1, :cond_0

    .line 256
    :goto_0
    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutAlphabeticChar:C

    .line 254
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setBadgeText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mBadgeText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mBadgeText:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    :goto_0
    return-void

    .line 750
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mBadgeText:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setCallback(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mItemCallback:Ljava/lang/Runnable;

    .line 238
    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 4
    .param p1, "checkable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 453
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 454
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 455
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 459
    :cond_0
    return-object p0

    :cond_1
    move v1, v2

    .line 454
    goto :goto_0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 477
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->setExclusiveItemChecked(Landroid/view/MenuItem;)V

    .line 485
    :goto_0
    return-object p0

    .line 482
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setCheckedInt(Z)V

    goto :goto_0
.end method

.method setCheckedInt(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    const/4 v2, 0x0

    .line 489
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 490
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x3

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 491
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 494
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 490
    goto :goto_0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 196
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 198
    return-object p0

    .line 193
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method public setExclusiveCheckable(Z)V
    .locals 2
    .param p1, "exclusive"    # Z

    .prologue
    .line 463
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v1, v0, -0x5

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 464
    return-void

    .line 463
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "iconResId"    # I

    .prologue
    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 438
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconResId:I

    .line 441
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 443
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 428
    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconResId:I

    .line 429
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 432
    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mIntent:Landroid/content/Intent;

    .line 229
    return-object p0
.end method

.method public setIsActionButton(Z)V
    .locals 1
    .param p1, "isActionButton"    # Z

    .prologue
    .line 572
    if-eqz p1, :cond_0

    .line 573
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 577
    :goto_0
    return-void

    .line 575
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    goto :goto_0
.end method

.method setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 541
    return-void
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C

    .prologue
    .line 266
    iget-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutNumericChar:C

    if-ne v0, p1, :cond_0

    .line 274
    :goto_0
    return-object p0

    .line 270
    :cond_0
    iput-char p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutNumericChar:C

    .line 272
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "listener"    # Landroid/view/MenuItem$OnActionExpandListener;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mOnActionExpandListener:Landroid/view/MenuItem$OnActionExpandListener;

    .line 729
    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0
    .param p1, "clickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .prologue
    .line 530
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 531
    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 2
    .param p1, "numericChar"    # C
    .param p2, "alphaChar"    # C

    .prologue
    .line 279
    iput-char p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutNumericChar:C

    .line 280
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iput-char v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShortcutAlphabeticChar:C

    .line 282
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 284
    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 2
    .param p1, "actionEnum"    # I

    .prologue
    .line 585
    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 594
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 597
    :pswitch_0
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    .line 598
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemActionRequestChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    .line 599
    return-void

    .line 585
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setShowAsActionFlags(I)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setShowAsActionFlags(I)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
    .locals 0
    .param p1, "actionEnum"    # I

    .prologue
    .line 670
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setShowAsAction(I)V

    .line 671
    return-object p0
.end method

.method public setSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)V
    .locals 1
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    .line 350
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mSubMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 353
    return-void
.end method

.method public setSupportActionProvider(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;)Lcom/samsung/android/support/sesl/core/view/SeslSupportMenuItem;
    .locals 2
    .param p1, "actionProvider"    # Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    .prologue
    .line 651
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->reset()V

    .line 654
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionView:Landroid/view/View;

    .line 655
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    .line 656
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 657
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mActionProvider:Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl$1;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->setVisibilityListener(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$VisibilityListener;)V

    .line 665
    :cond_1
    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # I

    .prologue
    .line 388
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 379
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mSubMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mSubMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    .line 383
    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitleCondensed:Ljava/lang/CharSequence;

    .line 401
    if-nez p1, :cond_0

    .line 402
    iget-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 407
    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setVisibleInt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemVisibleChanged(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)V

    .line 525
    :cond_0
    return-object p0
.end method

.method setVisibleInt(Z)Z
    .locals 4
    .param p1, "shown"    # Z

    .prologue
    const/4 v2, 0x0

    .line 513
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 514
    .local v0, "oldFlags":I
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    and-int/lit8 v3, v1, -0x9

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    .line 515
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mFlags:I

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 514
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public shouldShowIcon()Z
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getOptionalIconsVisible()Z

    move-result v0

    return v0
.end method

.method shouldShowShortcut()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->isShortcutsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getShortcut()C

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showsTextAsAction()Z
    .locals 2

    .prologue
    .line 580
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mShowAsAction:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->mTitle:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
