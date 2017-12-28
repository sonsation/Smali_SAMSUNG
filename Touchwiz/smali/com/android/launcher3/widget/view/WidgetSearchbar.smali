.class public Lcom/android/launcher3/widget/view/WidgetSearchbar;
.super Landroid/widget/LinearLayout;
.source "WidgetSearchbar.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;,
        Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;,
        Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;,
        Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;
    }
.end annotation


# static fields
.field private static final RUNTIME_WIDGET_SEARCH_STRING:Ljava/lang/String; = "RUNTIME_WIDGET_SEARCH_STRING"

.field private static final TAG:Ljava/lang/String; = "WidgetSearchbar"

.field private static sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;


# instance fields
.field private mDivider:Landroid/view/View;

.field private mHasUninstallableApps:Z

.field private mMenuActionListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSamsungMembersEnabled:Z

.field private mSearchButton:Landroid/widget/ImageView;

.field private mSearchCloseButton:Landroid/widget/ImageView;

.field private mSearchEditText:Landroid/widget/TextView;

.field private mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSearchVoiceButton:Landroid/widget/ImageView;

.field private mSearchbarWrapper:Landroid/widget/LinearLayout;

.field private mSkippedFirst:Z

.field private mState:Lcom/android/launcher3/widget/controller/WidgetState$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0e003f

    const v4, 0x7f0e002f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    sput-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    .line 98
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar$1;)V

    aput-object v1, v0, v2

    .line 99
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e003e

    iput v1, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->textColorId:I

    .line 100
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->iconColorId:I

    .line 101
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->backgroundColorId:I

    .line 102
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e0031

    iput v1, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->dividerColorId:I

    .line 104
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar$1;)V

    aput-object v1, v0, v3

    .line 105
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->textColorId:I

    .line 106
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->iconColorId:I

    .line 107
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0030

    iput v1, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->backgroundColorId:I

    .line 108
    sget-object v0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0032

    iput v1, v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->dividerColorId:I

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSkippedFirst:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mHasUninstallableApps:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSamsungMembersEnabled:Z

    .line 86
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mState:Lcom/android/launcher3/widget/controller/WidgetState$State;

    .line 420
    new-instance v0, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$6;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 133
    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Landroid/widget/SearchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMenuActionListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/widget/view/WidgetSearchbar;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;
    .param p1, "x1"    # Landroid/widget/PopupMenu;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    return-object v0
.end method

.method private dismissPopupMenu()V
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 466
    :cond_0
    return-void
.end method

.method private setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 311
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 312
    return-void
.end method

.method private setQueryString(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->onQueryTextChange(Ljava/lang/String;)Z

    .line 418
    :cond_0
    return-void
.end method

.method private updateMenuItemVisibility(Landroid/view/Menu;IZ)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "id"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 469
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 470
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 471
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 473
    :cond_0
    return-void
.end method

.method private updateMoreIconVisibity()V
    .locals 7

    .prologue
    const/16 v4, 0x8

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 491
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 492
    .local v2, "visibility":I
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mState:Lcom/android/launcher3/widget/controller/WidgetState$State;

    sget-object v6, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v5, v6, :cond_5

    .line 493
    iget-boolean v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mHasUninstallableApps:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSamsungMembersEnabled:Z

    if-eqz v5, :cond_3

    .line 494
    .local v0, "hasMenu":Z
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    move v2, v3

    .line 500
    .end local v0    # "hasMenu":Z
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    .line 501
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mDivider:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    :cond_2
    return-void

    :cond_3
    move v0, v3

    .line 493
    goto :goto_0

    .restart local v0    # "hasMenu":Z
    :cond_4
    move v2, v4

    .line 494
    goto :goto_1

    .line 495
    .end local v0    # "hasMenu":Z
    :cond_5
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mState:Lcom/android/launcher3/widget/controller/WidgetState$State;

    sget-object v6, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v5, v6, :cond_1

    .line 496
    iget-boolean v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mHasUninstallableApps:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSamsungMembersEnabled:Z

    if-eqz v5, :cond_7

    .line 497
    .restart local v0    # "hasMenu":Z
    :cond_6
    :goto_2
    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    .line 498
    .local v1, "noSearchText":Z
    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    move v2, v3

    :goto_3
    goto :goto_1

    .end local v0    # "hasMenu":Z
    .end local v1    # "noSearchText":Z
    :cond_7
    move v0, v3

    .line 496
    goto :goto_2

    .restart local v0    # "hasMenu":Z
    .restart local v1    # "noSearchText":Z
    :cond_8
    move v2, v4

    .line 498
    goto :goto_3
.end method


# virtual methods
.method public changeColorAndBackground(Z)V
    .locals 12
    .param p1, "whiteBg"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 283
    if-eqz p1, :cond_1

    sget-object v8, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    .line 286
    .local v6, "style":Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;
    :goto_0
    iget-object v9, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButtonContainer:Landroid/view/View;

    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_2

    const/high16 v8, 0x43340000    # 180.0f

    :goto_1
    invoke-virtual {v9, v8}, Landroid/view/View;->setRotation(F)V

    .line 288
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v8

    if-nez v8, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->textColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 290
    .local v7, "textColor":I
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 291
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 294
    .end local v7    # "textColor":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->iconColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 295
    .local v5, "iconColor":I
    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-direct {v4, v5, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 296
    .local v4, "filter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 297
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 298
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 299
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->backgroundColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 302
    .local v0, "bgColor":I
    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 303
    .local v1, "bgColorFilter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 305
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;->dividerColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 306
    .local v2, "dividerColor":I
    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v2, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 307
    .local v3, "dividerColorFilter":Landroid/graphics/ColorFilter;
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mDivider:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    .line 308
    return-void

    .line 283
    .end local v0    # "bgColor":I
    .end local v1    # "bgColorFilter":Landroid/graphics/ColorFilter;
    .end local v2    # "dividerColor":I
    .end local v3    # "dividerColorFilter":Landroid/graphics/ColorFilter;
    .end local v4    # "filter":Landroid/graphics/ColorFilter;
    .end local v5    # "iconColor":I
    .end local v6    # "style":Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;
    :cond_1
    sget-object v8, Lcom/android/launcher3/widget/view/WidgetSearchbar;->sStyles:[Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;

    aget-object v6, v8, v10

    goto/16 :goto_0

    .line 286
    .restart local v6    # "style":Lcom/android/launcher3/widget/view/WidgetSearchbar$Style;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1
.end method

.method public closeKeyboard(Z)V
    .locals 1
    .param p1, "minimize"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->disableFullyHideKeypad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-static {v0, p1}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    goto :goto_0
.end method

.method public enter(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V
    .locals 8
    .param p1, "toState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 235
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v6}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 237
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    .line 238
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Landroid/widget/SearchView;->setFocusable(Z)V

    .line 255
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v0, :cond_2

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 258
    :cond_2
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mState:Lcom/android/launcher3/widget/controller/WidgetState$State;

    .line 259
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->updateMoreIconVisibity()V

    .line 260
    return-void

    .line 239
    :cond_3
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->semSetDirectPenInputEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 244
    :cond_4
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f090193

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "WGSC"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 249
    iput-boolean v6, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSkippedFirst:Z

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;

    invoke-direct {v1, p0, v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;Lcom/android/launcher3/widget/view/WidgetSearchbar$1;)V

    invoke-interface {v0, v1}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;->setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V

    goto :goto_0
.end method

.method public exit(Lcom/android/launcher3/widget/controller/WidgetState$State;Landroid/animation/AnimatorSet;)V
    .locals 4
    .param p1, "fromState"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    const/4 v3, 0x0

    .line 263
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->dismissPopupMenu()V

    .line 264
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne p1, v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const/16 v1, 0x80

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 266
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 267
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    invoke-interface {v0, v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;->applySearchResult(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    invoke-interface {v0, v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;->setSearchFilter(Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;)V

    .line 276
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->semSetDirectPenInputEnabled(Z)V

    .line 280
    :cond_2
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 3

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 537
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 538
    return-void
.end method

.method public onFinishInflate()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 137
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSamsungMembersEnabled:Z

    .line 139
    const v4, 0x7f110112

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    .line 140
    const v4, 0x7f110113

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SearchView;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    .line 141
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setImeOptions(I)V

    .line 142
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const/16 v5, 0x2001

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setInputType(I)V

    .line 143
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v4

    if-nez v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    const-string v5, "nm"

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 147
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    .line 148
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v7}, Landroid/widget/SearchView;->setBackgroundColor(I)V

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_button"

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 151
    .local v0, "searchButtonId":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_voice_btn"

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 152
    .local v3, "searchVoiceId":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_close_btn"

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 153
    .local v1, "searchCloseId":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android:id/search_src_text"

    invoke-virtual {v4, v5, v6, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "searchEditTextId":I
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchVoiceButton:Landroid/widget/ImageView;

    .line 155
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchVoiceButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/android/launcher3/widget/view/WidgetSearchbar$1;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$1;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v0}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchButton:Landroid/widget/ImageView;

    .line 166
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchCloseButton:Landroid/widget/ImageView;

    .line 168
    const v4, 0x7f110114

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mDivider:Landroid/view/View;

    .line 170
    const v4, 0x7f110115

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButtonContainer:Landroid/view/View;

    .line 171
    const v4, 0x7f110110

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButton:Landroid/widget/ImageButton;

    .line 172
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/android/launcher3/widget/view/WidgetSearchbar$2;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$2;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v4, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    .line 181
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->semSetDirectPenInputEnabled(Z)V

    .line 184
    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    new-instance v5, Lcom/android/launcher3/widget/view/WidgetSearchbar$3;

    invoke-direct {v5, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$3;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 193
    invoke-virtual {p0, v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->changeColorAndBackground(Z)V

    .line 194
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 345
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    if-ne p1, v1, :cond_0

    .line 346
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 349
    :cond_0
    return v0
.end method

.method public onPagedViewTouchIntercepted()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->closeKeyboard(Z)V

    .line 396
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSkippedFirst:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;->applySearchResult(Ljava/lang/String;)V

    .line 338
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSkippedFirst:Z

    .line 339
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->updateMoreIconVisibity()V

    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->closeKeyboard(Z)V

    .line 328
    return v0
.end method

.method public onStageEnter()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 380
    return-void
.end method

.method public onStageExit()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 387
    return-void
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->setQueryString(Ljava/lang/String;)V

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    const-string v0, "WidgetSearchbar"

    const-string v1, "open keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetSearchbar$5;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$5;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 411
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 218
    if-eqz p1, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    .line 220
    .local v0, "stage":Lcom/android/launcher3/common/stage/Stage;
    instance-of v1, v0, Lcom/android/launcher3/widget/controller/WidgetController;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mState:Lcom/android/launcher3/widget/controller/WidgetState$State;

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetSearchbar$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$4;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 233
    .end local v0    # "stage":Lcom/android/launcher3/common/stage/Stage;
    :cond_1
    return-void
.end method

.method public openKeyboard()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->openKeyboard(Z)V

    .line 366
    return-void
.end method

.method public openKeyboard(Z)V
    .locals 3
    .param p1, "needCallViewClicked"    # Z

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mState:Lcom/android/launcher3/widget/controller/WidgetState$State;

    sget-object v2, Lcom/android/launcher3/widget/controller/WidgetState$State;->SEARCH:Lcom/android/launcher3/widget/controller/WidgetState$State;

    if-ne v1, v2, :cond_1

    .line 354
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 355
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 358
    :cond_0
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 362
    .end local v0    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    return-void
.end method

.method public restore(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 323
    return-void
.end method

.method public save(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "search":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const-string v1, "RUNTIME_WIDGET_SEARCH_STRING"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    return-void
.end method

.method public setFocus()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 484
    return-void
.end method

.method public setFocusToSearchEditText()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchEditText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 488
    return-void
.end method

.method public setHasInstallableApp(Z)V
    .locals 0
    .param p1, "has"    # Z

    .prologue
    .line 390
    iput-boolean p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mHasUninstallableApps:Z

    .line 391
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->updateMoreIconVisibity()V

    .line 392
    return-void
.end method

.method public setMenuActionListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMenuActionListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$MenuActionListener;

    .line 202
    return-void
.end method

.method public setOnSearchTextViewKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 205
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setOnSearchTextViewTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 211
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    :cond_0
    return-void
.end method

.method public setSearchListener(Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSearchListener:Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    .line 198
    return-void
.end method

.method public showPopupMenu()Z
    .locals 5

    .prologue
    .line 440
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    const/4 v2, 0x0

    .line 458
    :goto_0
    return v2

    .line 443
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->dismissPopupMenu()V

    .line 444
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f1100fb

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 445
    .local v0, "anchor":Landroid/view/View;
    new-instance v2, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x800005

    invoke-direct {v2, v3, v0, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 446
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f120001

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v4}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 447
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 448
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/launcher3/widget/view/WidgetSearchbar$7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/view/WidgetSearchbar$7;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    invoke-virtual {v2, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 454
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 455
    .local v1, "menu":Landroid/view/Menu;
    const v2, 0x7f110127

    iget-boolean v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mHasUninstallableApps:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->updateMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 456
    const v2, 0x7f110128

    iget-boolean v3, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mSamsungMembersEnabled:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->updateMenuItemVisibility(Landroid/view/Menu;IZ)V

    .line 457
    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V

    .line 458
    const/4 v2, 0x1

    goto :goto_0
.end method
