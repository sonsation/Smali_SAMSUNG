.class public Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;
.super Landroid/widget/TextView;
.source "SeslActionMenuItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;
.implements Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$ActionMenuChildView;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;,
        Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SeslActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mDefaultTextSize:F

.field private mExpandedFormat:Z

.field private mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

.field private mHasNavigationBar:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsChangedRelativePadding:Z

.field private mIsLastItem:Z

.field mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

.field mItemInvoker:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

.field private mMaxFontScale:F

.field private mMaxIconSize:I

.field private mMinWidth:I

.field mPopupCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;

.field private mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsChangedRelativePadding:Z

    .line 87
    const/4 v6, 0x0

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mDefaultTextSize:F

    .line 88
    const v6, 0x3f99999a    # 1.2f

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxFontScale:F

    .line 91
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mHasNavigationBar:Z

    .line 94
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsLastItem:Z

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 107
    .local v4, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mAllowTextWithIcon:Z

    .line 108
    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMenuItemView:[I

    invoke-virtual {p1, p2, v6, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionMenuItemView_android_minWidth:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMinWidth:I

    .line 112
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .local v2, "density":F
    const/high16 v6, 0x42000000    # 32.0f

    mul-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    .line 117
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    invoke-virtual {p0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    const/4 v6, -0x1

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSavedPaddingLeft:I

    .line 121
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setSaveEnabled(Z)V

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    invoke-virtual {v6, v9, v7, v5, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_actionMenuTextAppearance:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 126
    .local v1, "actionMeneTextAppearnceId":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance:[I

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    sget v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textSize:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 130
    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 132
    if-eqz v3, :cond_0

    .line 133
    iget v6, v3, Landroid/util/TypedValue;->data:I

    invoke-static {v6}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v6

    iput v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mDefaultTextSize:F

    .line 138
    :cond_0
    new-instance v6, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/samsung/android/support/sesl/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, p0, v7, v8}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    .line 140
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x4

    invoke-static {v6}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mHasNavigationBar:Z

    .line 141
    return-void
.end method

.method private isLayoutRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 534
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 5

    .prologue
    const/16 v4, 0x1e0

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 165
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 166
    .local v2, "widthDp":I
    iget v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 168
    .local v1, "heightDp":I
    if-ge v2, v4, :cond_1

    const/16 v3, 0x280

    if-lt v2, v3, :cond_0

    if-ge v1, v4, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateTextButtonVisibility()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 254
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    move v3, v4

    .line 255
    .local v3, "visible":Z
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 256
    invoke-virtual {v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->showsTextAsAction()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mExpandedFormat:Z

    if-eqz v6, :cond_1

    :cond_0
    move v5, v4

    :cond_1
    and-int/2addr v3, v5

    .line 259
    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mDefaultTextSize:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->fontScale:F

    .line 262
    .local v2, "fontScale":F
    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxFontScale:F

    cmpl-float v5, v2, v5

    if-lez v5, :cond_2

    .line 263
    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxFontScale:F

    .line 265
    :cond_2
    iget v5, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mDefaultTextSize:F

    mul-float/2addr v5, v2

    invoke-virtual {p0, v4, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setTextSize(IF)V

    .line 269
    .end local v2    # "fontScale":F
    :cond_3
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    if-eqz v3, :cond_7

    .line 273
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_NONE()I

    move-result v0

    .line 274
    .local v0, "TYPE_NONE":I
    if-eq v0, v7, :cond_4

    .line 275
    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 284
    .end local v0    # "TYPE_NONE":I
    :cond_4
    :goto_2
    return-void

    .end local v3    # "visible":Z
    :cond_5
    move v3, v5

    .line 254
    goto :goto_0

    .line 269
    .restart local v3    # "visible":Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 278
    :cond_7
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result v1

    .line 279
    .local v1, "TYPE_TOOLTIP":I
    if-eq v1, v7, :cond_4

    .line 280
    invoke-static {p0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;I)V
    .locals 1
    .param p1, "itemData"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    .param p2, "menuType"    # I

    .prologue
    .line 193
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    .line 195
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {p1, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getTitleForItemView(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setId(I)V

    .line 199
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setVisibility(I)V

    .line 200
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setEnabled(Z)V

    .line 201
    invoke-virtual {p1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    .line 206
    :cond_0
    return-void

    .line 199
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 362
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemInvoker:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemInvoker:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;->invokeItem(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->shouldAllowTextWithIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mAllowTextWithIcon:Z

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->updateTextButtonVisibility()V

    .line 149
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 337
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 338
    const-string v0, "android.widget.Button"

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 20
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v17

    if-nez v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    if-nez v17, :cond_1

    .line 373
    :cond_0
    const/16 v17, 0x0

    .line 435
    :goto_0
    return v17

    .line 376
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v12, v0, [I

    .line 377
    .local v12, "screenPos":[I
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 378
    .local v6, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getLocationOnScreen([I)V

    .line 379
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 382
    .local v3, "context":Landroid/content/Context;
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/samsung/android/support/sesl/R$dimen;->sesl_status_bar_height:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 383
    .local v13, "statusBarHeight":I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    sget v18, Lcom/samsung/android/support/sesl/R$dimen;->sesl_navigation_bar_height:I

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 384
    .local v9, "navigationBarHeight":F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getWidth()I

    move-result v14

    .line 385
    .local v14, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getHeight()I

    move-result v8

    .line 387
    .local v8, "height":I
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    .line 388
    .local v4, "density":F
    const-string/jumbo v17, "window"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 389
    .local v5, "display":Landroid/view/Display;
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    .line 390
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v7}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 392
    iget v11, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 394
    .local v11, "realScreenWidth":I
    iget v10, v7, Landroid/util/DisplayMetrics;->density:F

    .line 396
    .local v10, "realDensity":F
    const/4 v15, 0x0

    .line 397
    .local v15, "xOffset":I
    const/16 v16, 0x0

    .line 398
    .local v16, "yOffset":I
    const/16 v17, 0x1

    aget v17, v12, v17

    add-int v17, v17, v8

    sub-int v16, v17, v13

    .line 399
    const/16 v17, 0x0

    aget v17, v12, v17

    add-int v17, v17, v14

    sub-int v17, v11, v17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingStart()I

    move-result v18

    sub-int v18, v14, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingEnd()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingEnd()I

    move-result v18

    add-int v15, v17, v18

    .line 402
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->twMakeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 404
    .local v2, "cheatSheet":Landroid/widget/Toast;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getLayoutDirection()I

    move-result v17

    if-nez v17, :cond_3

    .line 405
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mHasNavigationBar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 407
    div-float v17, v9, v4

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v15, v15, v17

    .line 410
    :cond_2
    const/16 v17, 0x35

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 416
    :goto_1
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 434
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->performHapticFeedback(I)Z

    .line 435
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 412
    .restart local v2    # "cheatSheet":Landroid/widget/Toast;
    :cond_3
    const/16 v17, 0x0

    aget v17, v12, v17

    add-int v17, v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingStart()I

    move-result v18

    sub-int v18, v14, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingEnd()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingStart()I

    move-result v18

    sub-int v15, v17, v18

    .line 413
    const/16 v17, 0x33

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 418
    .end local v2    # "cheatSheet":Landroid/widget/Toast;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v3, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->makeTextForTooltip(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/samsung/android/support/sesl/component/widget/SeslToast;

    move-result-object v2

    .line 419
    .local v2, "cheatSheet":Lcom/samsung/android/support/sesl/component/widget/SeslToast;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getLayoutDirection()I

    move-result v17

    if-nez v17, :cond_6

    .line 420
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 421
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mHasNavigationBar:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 422
    div-float v17, v9, v4

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v15, v15, v17

    .line 425
    :cond_5
    const/16 v17, 0x35

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setGravity(III)V

    .line 431
    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->show()V

    goto :goto_2

    .line 427
    :cond_6
    const/16 v17, 0x0

    aget v17, v12, v17

    add-int v17, v17, v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingStart()I

    move-result v18

    sub-int v18, v14, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingEnd()I

    move-result v19

    sub-int v18, v18, v19

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingStart()I

    move-result v18

    sub-int v15, v17, v18

    .line 428
    const/16 v17, 0x33

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToast;->setGravity(III)V

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v5

    .line 441
    .local v5, "textVisible":Z
    if-eqz v5, :cond_0

    iget v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v9, :cond_0

    .line 442
    iget v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingTop()I

    move-result v10

    .line 443
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingBottom()I

    move-result v12

    .line 442
    invoke-super {p0, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 446
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v9, :cond_1

    .line 447
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingLeft()I

    move-result v2

    .line 448
    .local v2, "paddingLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingRight()I

    move-result v3

    .line 449
    .local v3, "paddingRight":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 450
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/sesl/R$drawable;->sesl_action_text_button_show_button_background:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    .line 461
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v9}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->updateButtonBackground()V

    .line 462
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-virtual {p0, v2, v9, v3, v10}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setPadding(IIII)V

    .line 465
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 467
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 468
    .local v7, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 469
    .local v8, "widthSize":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 470
    .local v1, "oldMeasuredWidth":I
    const/high16 v9, -0x80000000

    if-ne v7, v9, :cond_6

    iget v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMinWidth:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 473
    .local v4, "targetWidth":I
    :goto_1
    const/high16 v9, 0x40000000    # 2.0f

    if-eq v7, v9, :cond_2

    iget v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMinWidth:I

    if-lez v9, :cond_2

    if-ge v1, v4, :cond_2

    .line 475
    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-super {p0, v9, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 479
    :cond_2
    if-nez v5, :cond_3

    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getMeasuredWidth()I

    move-result v6

    .line 483
    .local v6, "w":I
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 485
    .local v0, "dw":I
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v9, :cond_3

    .line 486
    sub-int v9, v6, v0

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingRight()I

    move-result v11

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingBottom()I

    move-result v12

    invoke-super {p0, v9, v10, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 489
    .end local v0    # "dw":I
    .end local v6    # "w":I
    :cond_3
    return-void

    .line 453
    .end local v1    # "oldMeasuredWidth":I
    .end local v4    # "targetWidth":I
    .end local v7    # "widthMode":I
    .end local v8    # "widthSize":I
    .restart local v2    # "paddingLeft":I
    .restart local v3    # "paddingRight":I
    :cond_4
    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsLastItem:Z

    if-eqz v9, :cond_5

    .line 454
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/sesl/R$drawable;->sesl_more_button_show_button_background:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 457
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/samsung/android/support/sesl/R$drawable;->sesl_action_icon_button_show_button_background:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->setBackgroundOn(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 470
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    .restart local v1    # "oldMeasuredWidth":I
    .restart local v7    # "widthMode":I
    .restart local v8    # "widthSize":I
    :cond_6
    iget v4, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMinWidth:I

    goto :goto_1
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 350
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 351
    .local v0, "cdesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 527
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mForwardingListener:Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;

    .line 211
    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x1

    .line 214
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    return v0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSBBHelper:Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/util/SeslShowButtonBackgroundHelper;->setBackgroundOff(Landroid/graphics/drawable/Drawable;)V

    .line 157
    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0
    .param p1, "checkable"    # Z

    .prologue
    .line 238
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 242
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .param p1, "expandedFormat"    # Z

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 246
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mExpandedFormat:Z

    .line 247
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemData:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->actionFormatChanged()V

    .line 251
    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 9
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/4 v8, 0x0

    .line 542
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result v1

    .line 544
    .local v1, "changed":Z
    iget-boolean v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsChangedRelativePadding:Z

    if-nez v6, :cond_1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 548
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 549
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 550
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getWidth()I

    move-result v5

    .line 551
    .local v5, "width":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getHeight()I

    move-result v3

    .line 552
    .local v3, "height":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getPaddingRight()I

    move-result v7

    sub-int v4, v6, v7

    .line 553
    .local v4, "offsetX":I
    div-int/lit8 v2, v4, 0x2

    .line 554
    .local v2, "halfOffsetX":I
    add-int v6, v2, v5

    invoke-virtual {v0, v2, v8, v6, v3}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0

    .line 555
    .end local v2    # "halfOffsetX":I
    .end local v3    # "height":I
    .end local v4    # "offsetX":I
    .end local v5    # "width":I
    :cond_2
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->getHeight()I

    move-result v7

    invoke-virtual {v0, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 287
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 288
    if-eqz p1, :cond_2

    .line 289
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 290
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 291
    .local v0, "height":I
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 292
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 293
    .local v1, "scale":F
    iget v2, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    .line 294
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 296
    .end local v1    # "scale":F
    :cond_0
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 297
    iget v3, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 298
    .restart local v1    # "scale":F
    iget v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mMaxIconSize:I

    .line 299
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 301
    .end local v1    # "scale":F
    :cond_1
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 304
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->hasText()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 305
    invoke-virtual {p0, v5, v5, p1, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 310
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->updateTextButtonVisibility()V

    .line 311
    return-void

    .line 307
    :cond_3
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIsLastItem(Z)V
    .locals 0
    .param p1, "isLastItem"    # Z

    .prologue
    .line 321
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsLastItem:Z

    .line 322
    return-void
.end method

.method public setItemInvoker(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;)V
    .locals 0
    .param p1, "invoker"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mItemInvoker:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$ItemInvoker;

    .line 226
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSavedPaddingLeft:I

    .line 185
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 186
    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 177
    iput p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mSavedPaddingLeft:I

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mIsChangedRelativePadding:Z

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 180
    return-void
.end method

.method public setPopupCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;)V
    .locals 0
    .param p1, "popupCallback"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mPopupCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView$PopupCallback;

    .line 230
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .param p1, "showShortcut"    # Z
    .param p2, "shortcutKey"    # C

    .prologue
    .line 326
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslActionMenuItemView;->updateTextButtonVisibility()V

    .line 333
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x1

    return v0
.end method
