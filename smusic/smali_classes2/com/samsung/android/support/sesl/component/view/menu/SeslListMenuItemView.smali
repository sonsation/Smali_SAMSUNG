.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "SeslListMenuItemView.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final BADGE_LIMIT_NUMBER:I = 0x63

.field private static final TAG:Ljava/lang/String; = "SeslListMenuItemView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBadgeView:Landroid/widget/TextView;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

.field private mMenuType:I

.field private mNumberFotmat:Ljava/text/NumberFormat;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 77
    sget v0, Lcom/samsung/android/support/sesl/R$attr;->seslListMenuViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuView:[I

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 86
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuView_android_itemBackground:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 87
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuView_android_itemTextAppearance:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTextAppearance:I

    .line 89
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuView_seslPreserveIconSpacing:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mPreserveIconSpacing:Z

    .line 91
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    .line 92
    sget v1, Lcom/samsung/android/support/sesl/R$styleable;->SeslMenuView_seslSubMenuArrow:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mNumberFotmat:Ljava/text/NumberFormat;

    .line 97
    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private insertBadge()V
    .locals 3

    .prologue
    .line 354
    .line 355
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_badge:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->addView(Landroid/view/View;)V

    .line 358
    return-void
.end method

.method private insertCheckBox()V
    .locals 3

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 289
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_checkbox:I

    const/4 v2, 0x0

    .line 290
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 292
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->addView(Landroid/view/View;)V

    .line 293
    return-void
.end method

.method private insertIconView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 274
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_icon:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    .line 276
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->addView(Landroid/view/View;I)V

    .line 277
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 281
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/samsung/android/support/sesl/R$layout;->sesl_list_menu_item_radio:I

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 284
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->addView(Landroid/view/View;)V

    .line 285
    return-void
.end method

.method private isNumericValue(Ljava/lang/String;)Z
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 341
    if-nez p1, :cond_0

    .line 350
    :goto_0
    return v1

    .line 346
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v1, 0x1

    goto :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private setBadgeText(Ljava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x63

    .line 315
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-nez v5, :cond_0

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->insertBadge()V

    .line 319
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->isNumericValue(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 321
    .local v2, "num":I
    if-le v2, v4, :cond_1

    move v2, v4

    .line 322
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mNumberFotmat:Ljava/text/NumberFormat;

    int-to-long v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "localeFormattedNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/sesl/R$dimen;->sesl_badge_default_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 326
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/support/sesl/R$dimen;->sesl_badge_additional_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v3, v4

    .line 327
    .local v3, "width":I
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 328
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 329
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .end local v0    # "localeFormattedNumber":Ljava/lang/String;
    .end local v1    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "num":I
    .end local v3    # "width":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    return-void

    .line 331
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    :cond_3
    const/16 v4, 0x8

    goto :goto_1
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 2
    .param p1, "hasSubmenu"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 219
    :cond_0
    return-void

    .line 217
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public getItemData()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    return-object v0
.end method

.method public initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;I)V
    .locals 2
    .param p1, "itemData"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 120
    iput p2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mMenuType:I

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setVisibility(I)V

    .line 124
    invoke-virtual {p1, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getTitleForItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isCheckable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setCheckable(Z)V

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->shouldShowShortcut()Z

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getShortcut()C

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setShortcut(ZC)V

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 128
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setEnabled(Z)V

    .line 129
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setSubMenuArrowVisible(Z)V

    .line 130
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getBadgeText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setBadgeText(Ljava/lang/String;)V

    .line 131
    return-void

    .line 122
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 101
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    sget v0, Lcom/samsung/android/support/sesl/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    .line 106
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 111
    :cond_0
    sget v0, Lcom/samsung/android/support/sesl/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    .line 112
    sget v0, Lcom/samsung/android/support/sesl/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrowView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 261
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 264
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 265
    .local v0, "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    .line 266
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 269
    .end local v0    # "iconLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 270
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public setCheckable(Z)V
    .locals 5
    .param p1, "checkable"    # Z

    .prologue
    const/16 v3, 0x8

    .line 152
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 162
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v4, :cond_2

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->insertRadioButton()V

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 166
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 175
    .local v2, "otherCompoundButton":Landroid/widget/CompoundButton;
    :goto_1
    if-eqz p1, :cond_7

    .line 176
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 178
    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 179
    .local v1, "newVisibility":I
    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v1, :cond_3

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 184
    :cond_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 185
    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_0

    .line 168
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    .end local v1    # "newVisibility":I
    .end local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v4, :cond_5

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->insertCheckBox()V

    .line 171
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .line 172
    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .restart local v2    # "otherCompoundButton":Landroid/widget/CompoundButton;
    goto :goto_1

    :cond_6
    move v1, v3

    .line 178
    goto :goto_2

    .line 188
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v4, :cond_8

    .line 189
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 191
    :cond_8
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 200
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isExclusiveCheckable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->insertRadioButton()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    .line 212
    .local v0, "compoundButton":Landroid/widget/CompoundButton;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 213
    return-void

    .line 206
    .end local v0    # "compoundButton":Landroid/widget/CompoundButton;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v1, :cond_2

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->insertCheckBox()V

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    .restart local v0    # "compoundButton":Landroid/widget/CompoundButton;
    goto :goto_0
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mPreserveIconSpacing:Z

    .line 135
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->shouldShowIcon()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mForceShowIcon:Z

    if-eqz v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 236
    .local v0, "showIcon":Z
    :goto_0
    if-nez v0, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    .line 257
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    return-void

    .end local v0    # "showIcon":Z
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    move v0, v1

    .line 235
    goto :goto_0

    .line 240
    .restart local v0    # "showIcon":Z
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    if-nez p1, :cond_4

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_1

    .line 244
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_5

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->insertIconView()V

    .line 248
    :cond_5
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_8

    .line 249
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 249
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_7
    const/4 p1, 0x0

    goto :goto_2

    .line 255
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public setShortcut(ZC)V
    .locals 3
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 222
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->shouldShowShortcut()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    .line 225
    .local v0, "newVisibility":I
    :goto_0
    if-nez v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 230
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    :cond_1
    return-void

    .line 222
    .end local v0    # "newVisibility":I
    :cond_2
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v1, 0x8

    .line 138
    if-eqz p1, :cond_1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslListMenuItemView;->mForceShowIcon:Z

    return v0
.end method
