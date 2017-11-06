.class Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "SeslToolbar.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

.field mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V
    .locals 0

    .prologue
    .line 2343
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2344
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    const/4 v2, 0x0

    .line 2433
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2437
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 2438
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 2439
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iput-object v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    .line 2441
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addChildrenForExpandedActionView()V

    .line 2442
    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 2443
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 2444
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setActionViewExpanded(Z)V

    .line 2446
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 4
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    const/4 v3, 0x1

    .line 2404
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureCollapseButtonView()V

    .line 2405
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    if-eq v1, v2, :cond_0

    .line 2406
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addView(Landroid/view/View;)V

    .line 2408
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    .line 2409
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 2410
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    if-eq v1, v2, :cond_1

    .line 2411
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    .line 2412
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 2413
    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 2414
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2415
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v2, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addView(Landroid/view/View;)V

    .line 2418
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeChildrenForExpandedActionView()V

    .line 2419
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 2420
    invoke-virtual {p2, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setActionViewExpanded(Z)V

    .line 2422
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 2423
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2426
    :cond_2
    return v3
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 2399
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 2451
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 2357
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 2349
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    .line 2352
    :cond_0
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 2353
    return-void
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 2395
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 2461
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 2456
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    .line 2390
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 2386
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .prologue
    .line 2363
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v4, :cond_1

    .line 2364
    const/4 v1, 0x0

    .line 2366
    .local v1, "found":Z
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v4, :cond_0

    .line 2367
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v0

    .line 2368
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2369
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2370
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-ne v3, v4, :cond_2

    .line 2371
    const/4 v1, 0x1

    .line 2377
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    if-nez v1, :cond_1

    .line 2379
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    .line 2382
    .end local v1    # "found":Z
    :cond_1
    return-void

    .line 2368
    .restart local v0    # "count":I
    .restart local v1    # "found":Z
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/view/MenuItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
