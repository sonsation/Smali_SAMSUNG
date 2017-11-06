.class Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;
.super Lcom/samsung/android/support/sesl/component/app/SeslActionBar;
.source "SeslToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;,
        Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;,
        Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;,
        Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;
    }
.end annotation


# instance fields
.field mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

.field private mLastMenuVisibility:Z

.field private mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

.field private mMenuCallbackSet:Z

.field private final mMenuClicker:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

.field private final mMenuInvalidator:Ljava/lang/Runnable;

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mToolbarMenuPrepared:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2
    .param p1, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$1;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$2;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuClicker:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

    .line 73
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    .line 74
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ToolbarCallbackWrapper;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuClicker:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setOnMenuItemClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method private ensureListMenuPresenter(Landroid/view/Menu;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v6, 0x1

    .line 416
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    if-nez v5, :cond_1

    instance-of v5, p1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v5, :cond_1

    move-object v2, p1

    .line 417
    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 419
    .local v2, "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 420
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 421
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 422
    .local v4, "widgetTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 425
    const v5, 0x101048d

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 426
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_0

    .line 427
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 431
    :cond_0
    sget v5, Lcom/samsung/android/support/sesl/R$attr;->seslPanelMenuListTheme:I

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 432
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_2

    .line 433
    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 438
    :goto_0
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const/4 v5, 0x0

    invoke-direct {v1, v0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 439
    .end local v0    # "context":Landroid/content/Context;
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 442
    new-instance v5, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    sget v6, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_layout:I

    invoke-direct {v5, v1, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    .line 443
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    new-instance v6, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;

    invoke-direct {v6, p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$PanelMenuPresenterCallback;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 444
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v2, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 446
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .end local v3    # "outValue":Landroid/util/TypedValue;
    .end local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_1
    return-void

    .line 435
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v2    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .restart local v3    # "outValue":Landroid/util/TypedValue;
    .restart local v4    # "widgetTheme":Landroid/content/res/Resources$Theme;
    :cond_2
    sget v5, Lcom/samsung/android/support/sesl/R$style;->Theme_SeslCompat_CompactMenu:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0
.end method

.method private getMenu()Landroid/view/Menu;
    .locals 3

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    new-instance v1, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V

    new-instance v2, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;)V

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuCallbackSet:Z

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 384
    return-void
.end method

.method public collapseActionView()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->collapseActionView()V

    .line 329
    const/4 v0, 0x1

    .line 331
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 391
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 400
    :cond_0
    return-void

    .line 394
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mLastMenuVisibility:Z

    .line 396
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 397
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 398
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getCustomView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getElevation()F

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method getListMenuView(Landroid/view/Menu;)Landroid/view/View;
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->ensureListMenuPresenter(Landroid/view/Menu;)V

    .line 405
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    if-nez v1, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-object v0

    .line 409
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mListMenuPresenter:Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getWrappedWindowCallback()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setVisibility(I)V

    .line 306
    return-void
.end method

.method public invalidateOptionsMenu()Z
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 321
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 322
    const/4 v0, 0x1

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 155
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 191
    return-void
.end method

.method onDestroy()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuInvalidator:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 380
    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "ev"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 364
    .local v1, "menu":Landroid/view/Menu;
    if-eqz v1, :cond_0

    .line 365
    if-eqz p2, :cond_1

    .line 366
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    .line 365
    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 367
    .local v0, "kmap":Landroid/view/KeyCharacterMap;
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    if-eq v2, v3, :cond_2

    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 368
    invoke-interface {v1, p1, p2, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    .line 373
    .end local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_0
    return v3

    .line 366
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .restart local v0    # "kmap":Landroid/view/KeyCharacterMap;
    :cond_2
    move v2, v4

    .line 367
    goto :goto_1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 355
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->openOptionsMenu()Z

    .line 358
    :cond_0
    return v1
.end method

.method public openOptionsMenu()Z
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method

.method populateOptionsMenu()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 336
    .local v1, "menu":Landroid/view/Menu;
    instance-of v2, v1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-object v0, v2

    .line 337
    .local v0, "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_0
    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->stopDispatchingItemsChanged()V

    .line 341
    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/view/Menu;->clear()V

    .line 342
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 343
    invoke-interface {v2, v3, v4, v1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 344
    :cond_2
    invoke-interface {v1}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :cond_3
    if-eqz v0, :cond_4

    .line 348
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    .line 351
    :cond_4
    return-void

    .line 347
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 348
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->startDispatchingItemsChanged()V

    :cond_5
    throw v2
.end method

.method public removeOnMenuVisibilityListener(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$OnMenuVisibilityListener;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    return-void
.end method

.method public requestFocus()Z
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 211
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 213
    const/4 v1, 0x1

    .line 215
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 266
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 267
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setCustomView(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x2

    .line 86
    new-instance v0, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setCustomView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V

    .line 87
    return-void
.end method

.method public setCustomView(Landroid/view/View;Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setCustomView(Landroid/view/View;)V

    .line 95
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 251
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setDisplayOptions(II)V

    .line 252
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 230
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setDisplayOptions(II)V

    .line 231
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 235
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getDisplayOptions()I

    move-result v0

    .line 236
    .local v0, "currentOptions":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setDisplayOptions(I)V

    .line 237
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 261
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setDisplayOptions(II)V

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 246
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setDisplayOptions(II)V

    .line 247
    return-void

    .line 246
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 256
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setDisplayOptions(II)V

    .line 257
    return-void

    .line 256
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 241
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->setDisplayOptions(II)V

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 141
    return-void
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationContentDescription(I)V

    .line 181
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationIcon(I)V

    .line 166
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 161
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 136
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setIcon(I)V

    .line 106
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setLogo(I)V

    .line 116
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 121
    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 186
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 131
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 126
    return-void
.end method

.method public setSubtitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 225
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 226
    return-void

    .line 225
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 221
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 200
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 201
    return-void

    .line 200
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/app/SeslToolbarActionBar;->mDecorToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;->setVisibility(I)V

    .line 299
    return-void
.end method
