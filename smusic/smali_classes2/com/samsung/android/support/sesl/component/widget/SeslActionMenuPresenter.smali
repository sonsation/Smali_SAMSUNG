.class Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
.super Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;
.source "SeslActionMenuPresenter.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowTextView;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowImageView;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;,
        Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final MENU_WIDTH_LIMIT_FACTOR:F = 0.7f

.field private static final TAG:Ljava/lang/String; = "SeslActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mHasNavigationBar:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field private mNumberFormat:Ljava/text/NumberFormat;

.field mOpenSubMenuId:I

.field mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

.field mOverflowPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mUseTextItemMode:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 116
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_action_menu_layout:I

    sget v2, Lcom/samsung/android/support/sesl/R$layout;->sesl_action_menu_item_layout:I

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 96
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 106
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPopupPresenterCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$PopupPresenterCallback;

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mHasNavigationBar:Z

    .line 118
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mNumberFormat:Ljava/text/NumberFormat;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/sesl/R$bool;->sesl_action_bar_text_item_mode:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mUseTextItemMode:Z

    .line 120
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mHasNavigationBar:Z

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mUseTextItemMode:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mNumberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mHasNavigationBar:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v5, 0x0

    .line 401
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v3, Landroid/view/ViewGroup;

    .line 402
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_1

    move-object v0, v5

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 405
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 406
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 407
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .line 408
    invoke-interface {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;->getItemData()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v4

    if-eq v4, p1, :cond_0

    .line 405
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_3
    move-object v0, v5

    .line 412
    goto :goto_0
.end method


# virtual methods
.method public bindItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .param p2, "itemView"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;

    .prologue
    .line 267
    const/4 v2, 0x0

    invoke-interface {p2, p1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;->initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;I)V

    .line 269
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .local v1, "menuView":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    move-object v0, p2

    .line 270
    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;

    .line 271
    .local v0, "actionItemView":Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setItemInvoker(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;)V

    .line 273
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPopupCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 274
    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPopupCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPopupCallback:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setPopupCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;)V

    .line 277
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 467
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 468
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .prologue
    .line 357
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 358
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    goto :goto_0
.end method

.method public flagActionItems()Z
    .locals 29

    .prologue
    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v25

    .line 507
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 513
    .local v15, "itemsSize":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItems:I

    move/from16 v17, v0

    .line 514
    .local v17, "maxActions":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionItemWidthLimit:I

    move/from16 v26, v0

    .line 515
    .local v26, "widthLimit":I
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v20

    .line 516
    .local v20, "querySpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/ViewGroup;

    .line 518
    .local v19, "parent":Landroid/view/ViewGroup;
    const/16 v22, 0x0

    .line 519
    .local v22, "requiredItems":I
    const/16 v21, 0x0

    .line 520
    .local v21, "requestedItems":I
    const/4 v8, 0x0

    .line 521
    .local v8, "firstActionWidth":I
    const/4 v10, 0x0

    .line 522
    .local v10, "hasOverflow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v15, :cond_4

    .line 523
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 524
    .local v14, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_2

    .line 525
    add-int/lit8 v22, v22, 0x1

    .line 531
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionViewExpanded()Z

    move-result v27

    if-eqz v27, :cond_0

    .line 534
    const/16 v17, 0x0

    .line 522
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 509
    .end local v8    # "firstActionWidth":I
    .end local v10    # "hasOverflow":Z
    .end local v11    # "i":I
    .end local v14    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v15    # "itemsSize":I
    .end local v17    # "maxActions":I
    .end local v19    # "parent":Landroid/view/ViewGroup;
    .end local v20    # "querySpec":I
    .end local v21    # "requestedItems":I
    .end local v22    # "requiredItems":I
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    .end local v26    # "widthLimit":I
    :cond_1
    const/16 v25, 0x0

    .line 510
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    const/4 v15, 0x0

    .restart local v15    # "itemsSize":I
    goto :goto_0

    .line 526
    .restart local v8    # "firstActionWidth":I
    .restart local v10    # "hasOverflow":Z
    .restart local v11    # "i":I
    .restart local v14    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .restart local v17    # "maxActions":I
    .restart local v19    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "querySpec":I
    .restart local v21    # "requestedItems":I
    .restart local v22    # "requiredItems":I
    .restart local v26    # "widthLimit":I
    :cond_2
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 527
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 529
    :cond_3
    const/4 v10, 0x1

    goto :goto_2

    .line 539
    .end local v14    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    move/from16 v27, v0

    if-eqz v27, :cond_6

    if-nez v10, :cond_5

    add-int v27, v22, v21

    move/from16 v0, v27

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 541
    :cond_5
    add-int/lit8 v17, v17, -0x1

    .line 543
    :cond_6
    sub-int v17, v17, v22

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    move-object/from16 v23, v0

    .line 546
    .local v23, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V

    .line 548
    const/4 v4, 0x0

    .line 549
    .local v4, "cellSize":I
    const/4 v7, 0x0

    .line 550
    .local v7, "cellsRemaining":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v7, v26, v27

    .line 552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    rem-int v5, v26, v27

    .line 553
    .local v5, "cellSizeRemaining":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMinCellSize:I

    move/from16 v27, v0

    div-int v28, v5, v7

    add-int v4, v27, v28

    .line 557
    .end local v5    # "cellSizeRemaining":I
    :cond_7
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_1c

    .line 558
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 560
    .restart local v14    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->requiresActionButton()Z

    move-result v27

    if-eqz v27, :cond_c

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->getItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 562
    .local v24, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_8

    .line 563
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 565
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 566
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v27

    sub-int v7, v7, v27

    .line 571
    :goto_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 572
    .local v18, "measuredWidth":I
    sub-int v26, v26, v18

    .line 573
    if-nez v8, :cond_9

    .line 574
    move/from16 v8, v18

    .line 576
    :cond_9
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v9

    .line 577
    .local v9, "groupId":I
    if-eqz v9, :cond_a

    .line 578
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 580
    :cond_a
    const/16 v27, 0x1

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setIsActionButton(Z)V

    .line 557
    .end local v9    # "groupId":I
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 569
    .restart local v24    # "v":Landroid/view/View;
    :cond_b
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 581
    .end local v24    # "v":Landroid/view/View;
    :cond_c
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->requestsActionButton()Z

    move-result v27

    if-eqz v27, :cond_1b

    .line 584
    invoke-virtual {v14}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v9

    .line 585
    .restart local v9    # "groupId":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v12

    .line 586
    .local v12, "inGroup":Z
    if-gtz v17, :cond_d

    if-eqz v12, :cond_15

    :cond_d
    if-lez v26, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    if-lez v7, :cond_15

    :cond_e
    const/4 v13, 0x1

    .line 589
    .local v13, "isAction":Z
    :goto_6
    if-eqz v13, :cond_12

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v14, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->getItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v24

    .line 591
    .restart local v24    # "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    move-object/from16 v27, v0

    if-nez v27, :cond_f

    .line 592
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 594
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mStrictWidthLimit:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 595
    const/16 v27, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v27

    invoke-static {v0, v4, v7, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v6

    .line 597
    .local v6, "cells":I
    sub-int/2addr v7, v6

    .line 598
    if-nez v6, :cond_10

    .line 599
    const/4 v13, 0x0

    .line 604
    .end local v6    # "cells":I
    :cond_10
    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 605
    .restart local v18    # "measuredWidth":I
    sub-int v26, v26, v18

    .line 606
    if-nez v8, :cond_11

    .line 607
    move/from16 v8, v18

    .line 610
    :cond_11
    if-ltz v26, :cond_17

    const/16 v27, 0x1

    :goto_8
    and-int v13, v13, v27

    .line 613
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_12
    if-eqz v13, :cond_18

    if-eqz v9, :cond_18

    .line 614
    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 628
    :cond_13
    if-eqz v13, :cond_14

    add-int/lit8 v17, v17, -0x1

    .line 630
    :cond_14
    invoke-virtual {v14, v13}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 586
    .end local v13    # "isAction":Z
    :cond_15
    const/4 v13, 0x0

    goto :goto_6

    .line 602
    .restart local v13    # "isAction":Z
    .restart local v24    # "v":Landroid/view/View;
    :cond_16
    move-object/from16 v0, v24

    move/from16 v1, v20

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_7

    .line 610
    .restart local v18    # "measuredWidth":I
    :cond_17
    const/16 v27, 0x0

    goto :goto_8

    .line 615
    .end local v18    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    :cond_18
    if-eqz v12, :cond_13

    .line 617
    const/16 v27, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 618
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_9
    move/from16 v0, v16

    if-ge v0, v11, :cond_13

    .line 619
    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 620
    .local v3, "areYouMyGroupie":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getGroupId()I

    move-result v27

    move/from16 v0, v27

    if-ne v0, v9, :cond_1a

    .line 622
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionButton()Z

    move-result v27

    if-eqz v27, :cond_19

    add-int/lit8 v17, v17, 0x1

    .line 623
    :cond_19
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setIsActionButton(Z)V

    .line 618
    :cond_1a
    add-int/lit8 v16, v16, 0x1

    goto :goto_9

    .line 633
    .end local v3    # "areYouMyGroupie":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .end local v9    # "groupId":I
    .end local v12    # "inGroup":Z
    .end local v13    # "isAction":Z
    .end local v16    # "j":I
    :cond_1b
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v14, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->setIsActionButton(Z)V

    goto/16 :goto_5

    .line 636
    .end local v14    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1c
    const/16 v27, 0x1

    return v27
.end method

.method public getItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 251
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 252
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasCollapsibleActionView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->getItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 255
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v2, p3

    .line 257
    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 258
    .local v2, "menuParent":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 259
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 260
    invoke-virtual {v2, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    :cond_2
    return-object v0

    .line 255
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "menuParent":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    .line 242
    .local v0, "oldMenuView":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v1

    .line 243
    .local v1, "result":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;
    if-eq v0, v1, :cond_0

    move-object v2, v1

    .line 244
    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setPresenter(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V

    .line 246
    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_2
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v1, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 447
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v1, Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 449
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    move v1, v2

    .line 458
    :goto_0
    return v1

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    .line 454
    .local v0, "popup":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;
    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPopupHelper;->dismiss()V

    move v1, v2

    .line 456
    goto :goto_0

    .line 458
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hideSubMenus()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 479
    const/4 v0, 0x1

    .line 481
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 125
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 129
    .local v1, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->get(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;

    move-result-object v0

    .line 130
    .local v0, "abp":Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v4, :cond_0

    .line 131
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    .line 134
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v4, :cond_1

    .line 135
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    .line 137
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v5, 0x3f333333    # 0.7f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    .line 142
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v4, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->getMaxActionButtons()I

    move-result v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItems:I

    .line 146
    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    .line 147
    .local v3, "width":I
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    .line 148
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-nez v4, :cond_5

    .line 149
    new-instance v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    .line 150
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v4, :cond_4

    .line 151
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v4, :cond_3

    .line 152
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getInnerView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    :cond_3
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 157
    :cond_4
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 158
    .local v2, "spec":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v4, v2, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->measure(II)V

    .line 160
    .end local v2    # "spec":I
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    .line 165
    :goto_0
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionItemWidthLimit:I

    .line 167
    const/high16 v4, 0x42600000    # 56.0f

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMinCellSize:I

    .line 170
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 171
    return-void

    .line 162
    :cond_6
    iput-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    goto :goto_0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->dismissPopupMenus()Z

    .line 642
    invoke-super {p0, p1, p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->onCloseMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Z)V

    .line 643
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->get(Landroid/content/Context;)Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/SeslActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItems:I

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    .line 182
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v0, :cond_3

    .line 183
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionItemWidthLimit:I

    .line 188
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->onItemsChanged(Z)V

    .line 191
    :cond_2
    return-void

    .line 185
    :cond_3
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionItemWidthLimit:I

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 654
    instance-of v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;

    if-nez v3, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 658
    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;

    .line 659
    .local v1, "saved":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;
    iget v3, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v3, :cond_0

    .line 660
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 661
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 662
    invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .line 663
    .local v2, "subMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 647
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;-><init>()V

    .line 648
    .local v0, "state":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 649
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z
    .locals 9
    .param p1, "subMenu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .prologue
    const/4 v6, 0x0

    .line 362
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return v6

    .line 365
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->hasVisibleItems()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 367
    move-object v5, p1

    .line 368
    .local v5, "topSubMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    :goto_1
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eq v7, v8, :cond_2

    .line 369
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v5

    .end local v5    # "topSubMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    check-cast v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;

    .restart local v5    # "topSubMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;
    goto :goto_1

    .line 371
    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOpenSubMenuId:I

    .line 382
    const/4 v4, 0x0

    .line 383
    .local v4, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->size()I

    move-result v2

    .line 384
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_3

    .line 385
    invoke-virtual {p1, v3}, Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 386
    .local v1, "childItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 387
    const/4 v4, 0x1

    .line 392
    .end local v1    # "childItem":Landroid/view/MenuItem;
    :cond_3
    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v6, p0, v7, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;Landroid/view/View;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    .line 393
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v6, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 394
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mActionButtonPopup:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 396
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z

    .line 397
    const/4 v6, 0x1

    goto :goto_0

    .line 384
    .restart local v1    # "childItem":Landroid/view/MenuItem;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 670
    if-eqz p1, :cond_1

    .line 672
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .prologue
    .line 210
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 211
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItems:I

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMaxItemsSet:Z

    .line 207
    return-void
.end method

.method public setMenuView(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    .line 680
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 681
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mUseTextItemMode:Z

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getInnerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 222
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflowSet:Z

    .line 202
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .prologue
    .line 194
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimit:I

    .line 195
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mStrictWidthLimit:Z

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mWidthLimitSet:Z

    .line 197
    return-void
.end method

.method public shouldIncludeItem(ILcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .prologue
    .line 281
    invoke-virtual {p2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 420
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 421
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getExpandedItem()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v5, :cond_0

    move v5, v1

    .line 438
    :goto_0
    return v5

    .line 427
    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Landroid/view/View;Z)V

    .line 428
    .local v0, "popup":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    .line 430
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mPostedOpenRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 434
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->onSubMenuSelected(Lcom/samsung/android/support/sesl/component/view/menu/SeslSubMenuBuilder;)Z

    goto :goto_0

    .end local v0    # "popup":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$OverflowPopup;
    :cond_1
    move v5, v1

    .line 438
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 12
    .param p1, "cleared"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 286
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 287
    .local v5, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v5, :cond_0

    .line 288
    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/transition/SeslActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 290
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslBaseMenuPresenter;->updateMenuView(Z)V

    .line 292
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->requestLayout()V

    .line 294
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v9, :cond_2

    .line 295
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 296
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 297
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 298
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getSupportActionProvider()Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;

    move-result-object v8

    .line 299
    .local v8, "provider":Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
    if-eqz v8, :cond_1

    .line 300
    invoke-virtual {v8, p0}, Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;->setSubUiVisibilityListener(Lcom/samsung/android/support/sesl/core/view/SeslActionProvider$SubUiVisibilityListener;)V

    .line 297
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    .end local v8    # "provider":Lcom/samsung/android/support/sesl/core/view/SeslActionProvider;
    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenu:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 306
    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v6

    .line 308
    .local v6, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 309
    .local v2, "hasOverflow":Z
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 310
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 311
    .restart local v1    # "count":I
    if-ne v1, v10, :cond_c

    .line 312
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isActionViewExpanded()Z

    move-result v9

    if-nez v9, :cond_b

    move v2, v10

    .line 318
    .end local v1    # "count":I
    :cond_3
    :goto_2
    if-eqz v2, :cond_e

    .line 319
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-nez v9, :cond_4

    .line 320
    new-instance v9, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    .line 322
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 323
    .local v7, "parent":Landroid/view/ViewGroup;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    if-eq v7, v9, :cond_6

    .line 324
    if-eqz v7, :cond_5

    .line 325
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 327
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 328
    .local v4, "menuView":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->generateOverflowButtonLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    .end local v4    # "menuView":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    .end local v7    # "parent":Landroid/view/ViewGroup;
    :cond_6
    :goto_3
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v9, :cond_7

    .line 341
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v4, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 342
    .restart local v4    # "menuView":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getSumOfDigitsInBadges()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->setBadgeNumber(I)V

    .line 347
    .end local v4    # "menuView":Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    .line 352
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v9, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-boolean v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setOverflowReserved(Z)V

    .line 353
    return-void

    .line 306
    .end local v2    # "hasOverflow":Z
    .end local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_a
    const/4 v6, 0x0

    goto :goto_1

    .restart local v1    # "count":I
    .restart local v2    # "hasOverflow":Z
    .restart local v6    # "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;>;"
    :cond_b
    move v2, v11

    .line 312
    goto :goto_2

    .line 314
    :cond_c
    if-lez v1, :cond_d

    move v2, v10

    :goto_4
    goto :goto_2

    :cond_d
    move v2, v11

    goto :goto_4

    .line 330
    .end local v1    # "count":I
    :cond_e
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    if-ne v9, v10, :cond_6

    .line 331
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mMenuView:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    check-cast v9, Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->mOverflowButton:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter$SeslOverflowMenuButton;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 333
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 334
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->hideOverflowMenu()Z

    goto :goto_3
.end method
