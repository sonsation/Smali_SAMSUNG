.class final Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;
.source "SeslCascadingMenuPopup.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;,
        Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "popupStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param
    .param p4, "popupStyleRes"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param
    .param p5, "overflowOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;-><init>()V

    .line 85
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 93
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$1;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 114
    new-instance v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$2;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mMenuItemHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    .line 174
    iput v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mRawDropDownGravity:I

    .line 175
    iput v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mDropDownGravity:I

    .line 199
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mContext:Landroid/content/Context;

    .line 200
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 201
    iput p3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPopupStyleAttr:I

    .line 202
    iput p4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPopupStyleRes:I

    .line 203
    iput-boolean p5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mOverflowOnly:Z

    .line 205
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mForceShowIcon:Z

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->getInitialMenuPosition()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mLastPosition:I

    .line 208
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/samsung/android/support/sesl/R$dimen;->sesl_config_prefDialogWidth:I

    .line 210
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 209
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mMenuMaxWidth:I

    .line 212
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    .line 213
    return-void
.end method

.method private createPopupWindow()Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
    .locals 5

    .prologue
    .line 221
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPopupStyleAttr:I

    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPopupStyleRes:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 223
    .local v0, "popupWindow":Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mMenuItemHoverListener:Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setHoverListener(Lcom/samsung/android/support/sesl/component/widget/SeslMenuItemHoverListener;)V

    .line 224
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 227
    iget v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setDropDownGravity(I)V

    .line 228
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setModal(Z)V

    .line 229
    return-object v0
.end method

.method private findIndexOfAddedMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)I
    .locals 4
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 594
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 595
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 596
    .local v2, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-ne p1, v3, :cond_0

    .line 601
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :goto_1
    return v1

    .line 594
    .restart local v1    # "i":I
    .restart local v2    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    .end local v2    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private findMenuItemForSubmenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Landroid/view/MenuItem;
    .locals 4
    .param p1, "parent"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "submenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 455
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 456
    invoke-virtual {p1, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 457
    .local v2, "item":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 462
    .end local v2    # "item":Landroid/view/MenuItem;
    :goto_1
    return-object v2

    .line 455
    .restart local v2    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v2    # "item":Landroid/view/MenuItem;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findParentViewForSubmenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Landroid/view/View;
    .locals 12
    .param p1, "parentInfo"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "submenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 476
    iget-object v11, p1, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-direct {p0, v11, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->findMenuItemForSubmenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Landroid/view/MenuItem;

    move-result-object v7

    .line 477
    .local v7, "owner":Landroid/view/MenuItem;
    if-nez v7, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-object v10

    .line 485
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 486
    .local v5, "listView":Landroid/widget/ListView;
    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    .line 487
    .local v4, "listAdapter":Landroid/widget/ListAdapter;
    instance-of v11, v4, Landroid/widget/HeaderViewListAdapter;

    if-eqz v11, :cond_3

    move-object v1, v4

    .line 488
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 489
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 490
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    .line 497
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v6, "menuAdapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    :goto_1
    const/4 v8, -0x1

    .line 498
    .local v8, "ownerPosition":I
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getCount()I

    move-result v0

    .local v0, "count":I
    :goto_2
    if-ge v3, v0, :cond_2

    .line 499
    invoke-virtual {v6, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->getItem(I)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v11

    if-ne v7, v11, :cond_4

    .line 500
    move v8, v3

    .line 504
    :cond_2
    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    .line 510
    add-int/2addr v8, v2

    .line 513
    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v11

    sub-int v9, v8, v11

    .line 514
    .local v9, "ownerViewPosition":I
    if-ltz v9, :cond_0

    invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I

    move-result v11

    if-ge v9, v11, :cond_0

    .line 519
    invoke-virtual {v5, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    goto :goto_0

    .line 492
    .end local v0    # "count":I
    .end local v2    # "headersCount":I
    .end local v3    # "i":I
    .end local v6    # "menuAdapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    .end local v8    # "ownerPosition":I
    .end local v9    # "ownerViewPosition":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v6, v4

    .line 493
    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    .restart local v6    # "menuAdapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    goto :goto_1

    .line 498
    .restart local v0    # "count":I
    .restart local v3    # "i":I
    .restart local v8    # "ownerPosition":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private getInitialMenuPosition()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 289
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 290
    .local v0, "layoutDirection":I
    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 9
    .param p1, "nextMenuWidth"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 303
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 305
    .local v1, "lastListView":Landroid/widget/ListView;
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 306
    .local v4, "screenLocation":[I
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    .line 308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 309
    .local v0, "displayFrame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 311
    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mLastPosition:I

    if-ne v5, v7, :cond_1

    .line 312
    aget v5, v4, v6

    invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I

    move-result v8

    add-int/2addr v5, v8

    add-int v3, v5, p1

    .line 313
    .local v3, "right":I
    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-le v3, v5, :cond_0

    move v5, v6

    .line 322
    .end local v3    # "right":I
    :goto_0
    return v5

    .restart local v3    # "right":I
    :cond_0
    move v5, v7

    .line 316
    goto :goto_0

    .line 318
    .end local v3    # "right":I
    :cond_1
    aget v5, v4, v6

    sub-int v2, v5, p1

    .line 319
    .local v2, "left":I
    if-gez v2, :cond_2

    move v5, v7

    .line 320
    goto :goto_0

    :cond_2
    move v5, v6

    .line 322
    goto :goto_0
.end method

.method private showMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 24
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 344
    .local v5, "inflater":Landroid/view/LayoutInflater;
    new-instance v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mOverflowOnly:Z

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v3, v0, v5, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/LayoutInflater;Z)V

    .line 350
    .local v3, "adapter":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->isShowing()Z

    move-result v21

    if-nez v21, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mForceShowIcon:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 352
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->setForceShowIcon(Z)V

    .line 359
    :cond_0
    :goto_0
    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mMenuMaxWidth:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v8

    .line 360
    .local v8, "menuWidth":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->createPopupWindow()Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    move-result-object v14

    .line 361
    .local v14, "popupWindow":Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
    invoke-virtual {v14, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 362
    invoke-virtual {v14, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setContentWidth(I)V

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setDropDownGravity(I)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_3

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 369
    .local v10, "parentInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->findParentViewForSubmenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Landroid/view/View;

    move-result-object v13

    .line 375
    .local v13, "parentView":Landroid/view/View;
    :goto_1
    if-eqz v13, :cond_8

    .line 377
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setTouchModal(Z)V

    .line 378
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    .line 380
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v9

    .line 381
    .local v9, "nextMenuPosition":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_4

    const/4 v15, 0x1

    .line 382
    .local v15, "showOnRight":Z
    :goto_2
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mLastPosition:I

    .line 384
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 388
    .local v16, "tempLocation":[I
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 389
    iget-object v0, v10, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getHorizontalOffset()I

    move-result v21

    const/16 v22, 0x0

    aget v22, v16, v22

    add-int v11, v21, v22

    .line 390
    .local v11, "parentOffsetLeft":I
    iget-object v0, v10, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getVerticalOffset()I

    move-result v21

    const/16 v22, 0x1

    aget v22, v16, v22

    add-int v12, v21, v22

    .line 395
    .local v12, "parentOffsetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mDropDownGravity:I

    move/from16 v21, v0

    and-int/lit8 v21, v21, 0x5

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    .line 396
    if-eqz v15, :cond_5

    .line 397
    add-int v19, v11, v8

    .line 409
    .local v19, "x":I
    :goto_3
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setHorizontalOffset(I)V

    .line 411
    move/from16 v20, v12

    .line 412
    .local v20, "y":I
    move/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setVerticalOffset(I)V

    .line 424
    .end local v9    # "nextMenuPosition":I
    .end local v11    # "parentOffsetLeft":I
    .end local v12    # "parentOffsetTop":I
    .end local v15    # "showOnRight":Z
    .end local v16    # "tempLocation":[I
    .end local v19    # "x":I
    .end local v20    # "y":I
    :goto_4
    new-instance v7, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mLastPosition:I

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-direct {v7, v14, v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;I)V

    .line 425
    .local v7, "menuInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->show()V

    .line 430
    if-nez v10, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowTitle:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v21

    if-eqz v21, :cond_1

    .line 431
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v6

    .line 432
    .local v6, "listView":Landroid/widget/ListView;
    sget v21, Lcom/samsung/android/support/sesl/R$layout;->sesl_popup_menu_header_item_layout:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 434
    .local v17, "titleItemView":Landroid/widget/FrameLayout;
    const v21, 0x1020016

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 435
    .local v18, "titleView":Landroid/widget/TextView;
    const/16 v21, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 440
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->show()V

    .line 442
    .end local v6    # "listView":Landroid/widget/ListView;
    .end local v17    # "titleItemView":Landroid/widget/FrameLayout;
    .end local v18    # "titleView":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 353
    .end local v7    # "menuInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    .end local v8    # "menuWidth":I
    .end local v10    # "parentInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    .end local v13    # "parentView":Landroid/view/View;
    .end local v14    # "popupWindow":Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->isShowing()Z

    move-result v21

    if-eqz v21, :cond_0

    .line 355
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopup;->shouldPreserveIconSpacing(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->setForceShowIcon(Z)V

    goto/16 :goto_0

    .line 371
    .restart local v8    # "menuWidth":I
    .restart local v14    # "popupWindow":Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;
    :cond_3
    const/4 v10, 0x0

    .line 372
    .restart local v10    # "parentInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    const/4 v13, 0x0

    .restart local v13    # "parentView":Landroid/view/View;
    goto/16 :goto_1

    .line 381
    .restart local v9    # "nextMenuPosition":I
    :cond_4
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 399
    .restart local v11    # "parentOffsetLeft":I
    .restart local v12    # "parentOffsetTop":I
    .restart local v15    # "showOnRight":Z
    .restart local v16    # "tempLocation":[I
    :cond_5
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v21

    sub-int v19, v11, v21

    .restart local v19    # "x":I
    goto/16 :goto_3

    .line 402
    .end local v19    # "x":I
    :cond_6
    if-eqz v15, :cond_7

    .line 403
    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v21

    add-int v19, v11, v21

    .restart local v19    # "x":I
    goto/16 :goto_3

    .line 405
    .end local v19    # "x":I
    :cond_7
    sub-int v19, v11, v8

    .restart local v19    # "x":I
    goto/16 :goto_3

    .line 414
    .end local v9    # "nextMenuPosition":I
    .end local v11    # "parentOffsetLeft":I
    .end local v12    # "parentOffsetTop":I
    .end local v15    # "showOnRight":Z
    .end local v16    # "tempLocation":[I
    .end local v19    # "x":I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mHasXOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 415
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mXOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setHorizontalOffset(I)V

    .line 417
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mHasYOffset:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 418
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mYOffset:I

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setVerticalOffset(I)V

    .line 420
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 421
    .local v4, "epicenterBounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public addMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->showMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 6

    .prologue
    .line 261
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 262
    .local v3, "length":I
    if-lez v3, :cond_1

    .line 263
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v5, v3, [Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 264
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 265
    .local v0, "addedMenus":[Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 266
    aget-object v2, v0, v1

    .line 267
    .local v2, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    iget-object v4, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->dismiss()V

    .line 265
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 272
    .end local v0    # "addedMenus":[Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    .end local v1    # "i":I
    .end local v2    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    return-void
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    .line 706
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 527
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 10
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 606
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->findIndexOfAddedMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)I

    move-result v3

    .line 607
    .local v3, "menuIndex":I
    if-gez v3, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    add-int/lit8 v4, v3, 0x1

    .line 613
    .local v4, "nextMenuIndex":I
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 614
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 615
    .local v0, "childInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 619
    .end local v0    # "childInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 620
    .local v2, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v6, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 621
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShouldCloseImmediately:Z

    if-eqz v6, :cond_3

    .line 623
    iget-object v6, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v6, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    .line 624
    iget-object v6, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->setAnimationStyle(I)V

    .line 626
    :cond_3
    iget-object v6, v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->dismiss()V

    .line 628
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 629
    .local v1, "count":I
    if-lez v1, :cond_7

    .line 630
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mLastPosition:I

    .line 635
    :goto_1
    if-nez v1, :cond_8

    .line 637
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->dismiss()V

    .line 639
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v6, :cond_4

    .line 640
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    const/4 v7, 0x1

    invoke-interface {v6, p1, v7}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 643
    :cond_4
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v6, :cond_6

    .line 644
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 645
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 647
    :cond_5
    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 653
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v6}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_0

    .line 632
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mLastPosition:I

    goto :goto_1

    .line 654
    :cond_8
    if-eqz p2, :cond_0

    .line 658
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 659
    .local v5, "rootInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v6, v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    goto/16 :goto_0
.end method

.method public onDismiss()V
    .locals 6

    .prologue
    .line 537
    const/4 v1, 0x0

    .line 538
    .local v1, "dismissedInfo":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 539
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 540
    .local v3, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v4, v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->window:Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslMenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 541
    move-object v1, v3

    .line 548
    .end local v3    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    if-eqz v1, :cond_1

    .line 549
    iget-object v4, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    .line 551
    :cond_1
    return-void

    .line 538
    .restart local v3    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 276
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->dismiss()V

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 675
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 4
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 569
    .local v0, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-ne p1, v3, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 584
    .end local v0    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_1
    :goto_0
    return v1

    .line 576
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 577
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->addMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 579
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    if-eqz v2, :cond_1

    .line 580
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;->onOpenSubMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)Z

    goto :goto_0

    .line 584
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 688
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 689
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 692
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 693
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 692
    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mDropDownGravity:I

    .line 695
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 563
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mForceShowIcon:Z

    .line 218
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "dropDownGravity"    # I

    .prologue
    .line 679
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    .line 680
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mRawDropDownGravity:I

    .line 681
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    .line 681
    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mDropDownGravity:I

    .line 684
    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mHasXOffset:Z

    .line 712
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mXOffset:I

    .line 713
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 699
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 700
    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0
    .param p1, "showTitle"    # Z

    .prologue
    .line 723
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowTitle:Z

    .line 724
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mHasYOffset:Z

    .line 718
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mYOffset:I

    .line 719
    return-void
.end method

.method public show()V
    .locals 4

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 240
    .local v1, "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->showMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    goto :goto_1

    .line 242
    .end local v1    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 244
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    .line 246
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 247
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 248
    .local v0, "addGlobalListener":Z
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 249
    if-eqz v0, :cond_0

    .line 250
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 247
    .end local v0    # "addGlobalListener":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public updateMenuView(Z)V
    .locals 3
    .param p1, "cleared"    # Z

    .prologue
    .line 555
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;

    .line 556
    .local v0, "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 558
    .end local v0    # "info":Lcom/samsung/android/support/sesl/component/view/menu/SeslCascadingMenuPopup$CascadingMenuInfo;
    :cond_0
    return-void
.end method
