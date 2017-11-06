.class public Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
.super Landroid/view/ViewGroup;
.source "SeslToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;,
        Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;,
        Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;,
        Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SeslToolbar"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

.field mButtonGravity:I

.field mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxFontScale:F

.field private mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

.field private mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

.field private final mMenuViewItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

.field private mNavButtonView:Landroid/widget/ImageButton;

.field mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

.field private mOuterActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWrapper:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 24
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 239
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 179
    const v21, 0x800013

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mGravity:I

    .line 193
    const v21, 0x3f99999a    # 1.2f

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxFontScale:F

    .line 196
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    .line 199
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    .line 201
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempMargins:[I

    .line 205
    new-instance v21, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuViewItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

    .line 224
    new-instance v21, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 242
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v21

    sget-object v22, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar:[I

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move/from16 v3, p3

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 245
    .local v5, "a":Landroid/content/res/TypedArray;
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_titleTextAppearance:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextAppearance:I

    .line 246
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_subtitleTextAppearance:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextAppearance:I

    .line 247
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_gravity:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mGravity:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mGravity:I

    .line 248
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslButtonGravity:I

    const/16 v22, 0x30

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mButtonGravity:I

    .line 250
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleMargin:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v20

    .line 251
    .local v20, "titleMargin":I
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    .line 253
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleMarginStart:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 254
    .local v14, "marginStart":I
    if-ltz v14, :cond_0

    .line 255
    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    .line 258
    :cond_0
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleMarginEnd:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 259
    .local v13, "marginEnd":I
    if-ltz v13, :cond_1

    .line 260
    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    .line 263
    :cond_1
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleMarginTop:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    .line 264
    .local v15, "marginTop":I
    if-ltz v15, :cond_2

    .line 265
    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    .line 268
    :cond_2
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleMarginBottom:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v12

    .line 270
    .local v12, "marginBottom":I
    if-ltz v12, :cond_3

    .line 271
    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    .line 274
    :cond_3
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslMaxButtonHeight:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxButtonHeight:I

    .line 276
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_contentInsetStart:I

    const/high16 v22, -0x80000000

    .line 277
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 279
    .local v9, "contentInsetStart":I
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_contentInsetEnd:I

    const/high16 v22, -0x80000000

    .line 280
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 282
    .local v6, "contentInsetEnd":I
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_contentInsetLeft:I

    const/16 v22, 0x0

    .line 283
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 284
    .local v7, "contentInsetLeft":I
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_contentInsetRight:I

    const/16 v22, 0x0

    .line 285
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 287
    .local v8, "contentInsetRight":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureContentInsets()V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->setAbsolute(II)V

    .line 290
    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-ne v9, v0, :cond_4

    const/high16 v21, -0x80000000

    move/from16 v0, v21

    if-eq v6, v0, :cond_5

    .line 292
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->setRelative(II)V

    .line 295
    :cond_5
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslContentInsetStartWithNavigation:I

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetStartWithNavigation:I

    .line 297
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslContentInsetEndWithActions:I

    const/high16 v22, -0x80000000

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetEndWithActions:I

    .line 300
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslCollapseIcon:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 301
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslCollapseContentDescription:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    .line 303
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_title:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    .line 304
    .local v19, "title":Ljava/lang/CharSequence;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_6

    .line 305
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 308
    :cond_6
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_subtitle:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    .line 309
    .local v18, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 310
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 314
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    .line 315
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_popupTheme:I

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setPopupTheme(I)V

    .line 317
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_navigationIcon:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 318
    .local v17, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_8

    .line 319
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 321
    :cond_8
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_navigationContentDescription:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 322
    .local v16, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_9

    .line 323
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 326
    :cond_9
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_logo:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 327
    .local v10, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_a

    .line 328
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 331
    :cond_a
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslLogoDescription:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 332
    .local v11, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_b

    .line 333
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 336
    :cond_b
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleTextColor:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 337
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslTitleTextColor:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitleTextColor(I)V

    .line 340
    :cond_c
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslSubtitleTextColor:I

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 341
    sget v21, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslSubtitleTextColor:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitleTextColor(I)V

    .line 343
    :cond_d
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 344
    return-void
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 7
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 2069
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_1

    .line 2070
    .local v4, "isRtl":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildCount()I

    move-result v2

    .line 2072
    .local v2, "childCount":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutDirection()I

    move-result v6

    .line 2071
    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2074
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2076
    if-eqz v4, :cond_2

    .line 2077
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_4

    .line 2078
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2079
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 2080
    .local v5, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    iget v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 2081
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_0

    .line 2082
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2077
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 2069
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2086
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v2, :cond_4

    .line 2087
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2088
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 2089
    .restart local v5    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    iget v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, v5, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 2090
    invoke-direct {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_3

    .line 2091
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2086
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2095
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .prologue
    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1424
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_0

    .line 1425
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    .line 1431
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :goto_0
    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 1433
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 1434
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1439
    :goto_1
    return-void

    .line 1426
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1427
    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    goto :goto_0

    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_1
    move-object v0, v1

    .line 1429
    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .restart local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    goto :goto_0

    .line 1437
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private ensureContentInsets()V
    .locals 1

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    if-nez v0, :cond_0

    .line 2218
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    .line 2220
    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 711
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    .line 713
    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureMenuView()V

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->peekMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1061
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .line 1062
    .local v0, "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    .line 1063
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    .line 1065
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1066
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 1068
    .end local v0    # "menu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 4

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-nez v1, :cond_0

    .line 1072
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 1073
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setPopupTheme(I)V

    .line 1074
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuViewItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setOnMenuItemClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView$OnMenuItemClickListener;)V

    .line 1075
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 1076
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    .line 1077
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    const v1, 0x800005

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 1078
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1079
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addSystemView(Landroid/view/View;Z)V

    .line 1081
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 6

    .prologue
    .line 1386
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-nez v2, :cond_0

    .line 1387
    new-instance v2, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/samsung/android/support/sesl/R$attr;->seslToolbarNavigationButtonStyle:I

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1389
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v1

    .line 1390
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    const v2, 0x800003

    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 1391
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1393
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v2}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->isHoveringUIEnabled(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1394
    invoke-static {}, Lcom/samsung/android/support/sesl/core/widget/SeslHoverPopupWindowReflector;->getField_TYPE_TOOLTIP()I

    move-result v0

    .line 1395
    .local v0, "TYPE_TOOLTIP":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1396
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-static {v2, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewReflector;->semSetHoverPopupType(Landroid/view/View;I)V

    .line 1400
    .end local v0    # "TYPE_TOOLTIP":I
    .end local v1    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    .line 2098
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutDirection()I

    move-result v2

    .line 2099
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2100
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 2101
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_0

    .line 2107
    :pswitch_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x5

    :goto_0
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_1
    return v1

    .restart local v1    # "hGrav":I
    :cond_0
    const/4 v3, 0x3

    goto :goto_0

    .line 2101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 2018
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 2019
    .local v3, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2020
    .local v1, "childHeight":I
    if-lez p2, :cond_1

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 2021
    .local v0, "alignmentOffset":I
    :goto_0
    iget v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    .line 2031
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v5

    .line 2032
    .local v5, "paddingTop":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingBottom()I

    move-result v4

    .line 2033
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHeight()I

    move-result v2

    .line 2034
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 2035
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 2036
    .local v7, "spaceAbove":I
    iget v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_2

    .line 2037
    iget v7, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    .line 2045
    :cond_0
    :goto_1
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_2
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_1
    move v0, v9

    .line 2020
    goto :goto_0

    .line 2023
    .restart local v0    # "alignmentOffset":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_2

    .line 2026
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHeight()I

    move-result v9

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_2

    .line 2039
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_2
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 2041
    .local v8, "spaceBelow":I
    iget v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_0

    .line 2042
    iget v10, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_1

    .line 2021
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 2050
    and-int/lit8 v0, p1, 0x70

    .line 2051
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_0

    .line 2057
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_0
    return v0

    .line 2051
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2117
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 1084
    new-instance v0, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/view/SeslSupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2121
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2122
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 13
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 1973
    aget v0, p2, v12

    .line 1974
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 1975
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 1976
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1977
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1978
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1979
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1980
    .local v6, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    iget v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 1981
    .local v4, "l":I
    iget v11, v6, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 1982
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1983
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1984
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1985
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1986
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 1977
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1988
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_0
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2189
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private static isCustomView(Landroid/view/View;)Z
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2154
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 1993
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1994
    .local v2, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 1995
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 1996
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 1997
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 1998
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1999
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2000
    iget v4, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 2001
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2006
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 2007
    .local v1, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 2008
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2009
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 2010
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 2011
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2012
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2013
    iget v4, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 2014
    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1564
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1566
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1567
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1568
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1569
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1570
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1571
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1572
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1575
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1574
    invoke-static {p2, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1577
    .local v1, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1576
    invoke-static {p4, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildMeasureSpec(III)I

    move-result v0

    .line 1580
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1581
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1539
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1542
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1541
    invoke-static {p2, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildMeasureSpec(III)I

    move-result v2

    .line 1545
    .local v2, "childWidthSpec":I
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1544
    invoke-static {p4, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildMeasureSpec(III)I

    move-result v1

    .line 1548
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1549
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_0

    if-ltz p6, :cond_0

    .line 1550
    if-eqz v0, :cond_1

    .line 1551
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1553
    .local v4, "size":I
    :goto_0
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1555
    .end local v4    # "size":I
    :cond_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1556
    return-void

    :cond_1
    move v4, p6

    .line 1551
    goto :goto_0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1478
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->post(Ljava/lang/Runnable;)Z

    .line 1479
    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1588
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapsible:Z

    if-nez v4, :cond_1

    .line 1598
    :cond_0
    :goto_0
    return v3

    .line 1590
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildCount()I

    move-result v1

    .line 1591
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 1592
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1593
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_2

    .line 1594
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1591
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1598
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 3

    .prologue
    .line 2180
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2182
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 2183
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addView(Landroid/view/View;)V

    .line 2182
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2185
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2186
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 532
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2150
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public collapseActionView()V
    .locals 2

    .prologue
    .line 740
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 742
    .local v0, "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->collapseActionView()Z

    .line 745
    :cond_0
    return-void

    .line 740
    .end local v0    # "item":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    goto :goto_0
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->dismissPopupMenus()V

    .line 613
    :cond_0
    return-void
.end method

.method ensureCollapseButtonView()V
    .locals 5

    .prologue
    .line 1403
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_0

    .line 1404
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget v4, Lcom/samsung/android/support/sesl/R$attr;->seslToolbarNavigationButtonStyle:I

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1406
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1407
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1408
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    .line 1409
    .local v0, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->gravity:I

    .line 1410
    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    .line 1411
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1412
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$3;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1419
    .end local v0    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 2145
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2127
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2132
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    if-eqz v0, :cond_0

    .line 2133
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    check-cast p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;)V

    .line 2139
    :goto_0
    return-object v0

    .line 2134
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    if-eqz v0, :cond_1

    .line 2135
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    check-cast p1, Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(Lcom/samsung/android/support/sesl/component/app/SeslActionBar$LayoutParams;)V

    goto :goto_0

    .line 2136
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    .line 2137
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_0

    .line 2139
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getContentInsetEnd()I
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->getEnd()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    .prologue
    .line 1293
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetEndWithActions:I

    :goto_0
    return v0

    .line 1295
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getContentInsetLeft()I
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->getLeft()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetRight()I
    .locals 1

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->getRight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStart()I
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->getStart()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    .prologue
    .line 1250
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetStartWithNavigation:I

    :goto_0
    return v0

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1345
    const/4 v0, 0x0

    .line 1346
    .local v0, "hasActions":Z
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v3, :cond_0

    .line 1347
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->peekMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    .line 1348
    .local v1, "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->hasVisibleItems()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1350
    .end local v1    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 1351
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContentInsetEnd()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetEndWithActions:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1350
    :goto_1
    return v2

    .restart local v1    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_1
    move v0, v2

    .line 1348
    goto :goto_0

    .line 1352
    .end local v1    # "mb":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContentInsetEnd()I

    move-result v2

    goto :goto_1
.end method

.method public getCurrentContentInsetLeft()I
    .locals 2

    .prologue
    .line 1365
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1366
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetEnd()I

    move-result v0

    .line 1365
    :goto_0
    return v0

    .line 1367
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetRight()I
    .locals 2

    .prologue
    .line 1380
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1381
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetStart()I

    move-result v0

    .line 1380
    :goto_0
    return v0

    .line 1382
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetEnd()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentContentInsetStart()I
    .locals 3

    .prologue
    .line 1331
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContentInsetStart()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetStartWithNavigation:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1331
    :goto_0
    return v0

    .line 1333
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContentInsetStart()I

    move-result v0

    goto :goto_0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 1032
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureMenu()V

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 914
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1053
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureMenu()V

    .line 1054
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .prologue
    .line 397
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleMarginBottom()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    return v0
.end method

.method public getTitleMarginEnd()I
    .locals 1

    .prologue
    .line 472
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    return v0
.end method

.method public getTitleMarginStart()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    return v0
.end method

.method public getTitleMarginTop()I
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    return v0
.end method

.method public getWrapper()Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2160
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mWrapper:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    if-nez v0, :cond_0

    .line 2161
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Z)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mWrapper:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    .line 2163
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mWrapper:Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inflateMenu(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/MenuRes;
        .end annotation
    .end param

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1097
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 618
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 633
    :cond_0
    :goto_0
    return v3

    .line 622
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 623
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 627
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 628
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 629
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 630
    const/4 v3, 0x1

    goto :goto_0

    .line 628
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 348
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme:[I

    invoke-virtual {v5, v6}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 354
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslCompatTheme_android_actionBarSize:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 355
    .local v1, "actionBarHeight":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 357
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 358
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar:[I

    const v8, 0x10104aa

    invoke-virtual {v5, v6, v7, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 362
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_seslMaxButtonHeight:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 363
    .local v3, "maxButtonHeight":I
    if-lt v3, v9, :cond_0

    .line 364
    iput v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxButtonHeight:I

    .line 366
    :cond_0
    sget v5, Lcom/samsung/android/support/sesl/R$styleable;->SeslToolbar_android_minHeight:I

    invoke-virtual {v0, v5, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 367
    .local v4, "minHeight":I
    if-lt v4, v9, :cond_1

    .line 368
    invoke-virtual {p0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setMinimumHeight(I)V

    .line 370
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 371
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1483
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1484
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1485
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1519
    .local v0, "action":I
    if-ne v0, v5, :cond_0

    .line 1520
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingHover:Z

    .line 1523
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingHover:Z

    if-nez v2, :cond_1

    .line 1524
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1525
    .local v1, "handled":Z
    if-ne v0, v5, :cond_1

    if-nez v1, :cond_1

    .line 1526
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingHover:Z

    .line 1530
    .end local v1    # "handled":Z
    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1531
    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingHover:Z

    .line 1534
    :cond_3
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 52
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1755
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutDirection()I

    move-result v49

    const/16 v50, 0x1

    move/from16 v0, v49

    move/from16 v1, v50

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    .line 1756
    .local v18, "isRtl":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getWidth()I

    move-result v48

    .line 1757
    .local v48, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHeight()I

    move-result v16

    .line 1758
    .local v16, "height":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingLeft()I

    move-result v27

    .line 1759
    .local v27, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingRight()I

    move-result v28

    .line 1760
    .local v28, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v29

    .line 1761
    .local v29, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingBottom()I

    move-result v26

    .line 1762
    .local v26, "paddingBottom":I
    move/from16 v22, v27

    .line 1763
    .local v22, "left":I
    sub-int v32, v48, v28

    .line 1765
    .local v32, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempMargins:[I

    .line 1766
    .local v12, "collapsingMargins":[I
    const/16 v49, 0x0

    const/16 v50, 0x1

    const/16 v51, 0x0

    aput v51, v12, v50

    aput v51, v12, v49

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getMinimumHeight()I

    move-result v25

    .line 1770
    .local v25, "minHeight":I
    if-ltz v25, :cond_f

    sub-int v49, p5, p3

    move/from16 v0, v25

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1772
    .local v5, "alignmentHeight":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_0

    .line 1773
    if-eqz v18, :cond_10

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    .line 1782
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_1

    .line 1783
    if-eqz v18, :cond_11

    .line 1784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    .line 1792
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_2

    .line 1793
    if-eqz v18, :cond_12

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    .line 1802
    :cond_2
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetLeft()I

    move-result v13

    .line 1803
    .local v13, "contentInsetLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetRight()I

    move-result v14

    .line 1804
    .local v14, "contentInsetRight":I
    const/16 v49, 0x0

    const/16 v50, 0x0

    sub-int v51, v13, v22

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    aput v50, v12, v49

    .line 1805
    const/16 v49, 0x1

    const/16 v50, 0x0

    sub-int v51, v48, v28

    sub-int v51, v51, v32

    sub-int v51, v14, v51

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    aput v50, v12, v49

    .line 1806
    move/from16 v0, v22

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 1807
    sub-int v49, v48, v28

    sub-int v49, v49, v14

    move/from16 v0, v32

    move/from16 v1, v49

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 1809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_3

    .line 1810
    if-eqz v18, :cond_13

    .line 1811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    .line 1819
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v49

    if-eqz v49, :cond_4

    .line 1820
    if-eqz v18, :cond_14

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    .line 1829
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v20

    .line 1830
    .local v20, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v19

    .line 1831
    .local v19, "layoutSubtitle":Z
    const/16 v42, 0x0

    .line 1832
    .local v42, "titleHeight":I
    if-eqz v20, :cond_5

    .line 1833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1834
    .local v24, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    add-int v49, v49, v50

    add-int v42, v42, v49

    .line 1836
    .end local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_5
    if-eqz v19, :cond_6

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1838
    .restart local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v50, v0

    invoke-virtual/range {v50 .. v50}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v50

    add-int v49, v49, v50

    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    add-int v49, v49, v50

    add-int v42, v42, v49

    .line 1841
    .end local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_6
    if-nez v20, :cond_7

    if-eqz v19, :cond_d

    .line 1843
    :cond_7
    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    .line 1844
    .local v46, "topChild":Landroid/view/View;
    :goto_7
    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1845
    .local v6, "bottomChild":Landroid/view/View;
    :goto_8
    invoke-virtual/range {v46 .. v46}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v47

    check-cast v47, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1846
    .local v47, "toplp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1847
    .local v7, "bottomlp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    if-gtz v49, :cond_9

    :cond_8
    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    .line 1848
    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    if-lez v49, :cond_17

    :cond_9
    const/16 v41, 0x1

    .line 1850
    .local v41, "titleHasWidth":Z
    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mGravity:I

    move/from16 v49, v0

    and-int/lit8 v49, v49, 0x70

    sparse-switch v49, :sswitch_data_0

    .line 1856
    sub-int v49, v16, v29

    sub-int v34, v49, v26

    .line 1857
    .local v34, "space":I
    sub-int v49, v34, v42

    div-int/lit8 v35, v49, 0x2

    .line 1858
    .local v35, "spaceAbove":I
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    move/from16 v50, v0

    add-int v49, v49, v50

    move/from16 v0, v35

    move/from16 v1, v49

    if-ge v0, v1, :cond_18

    .line 1859
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    move/from16 v50, v0

    add-int v35, v49, v50

    .line 1868
    :cond_a
    :goto_a
    add-int v45, v29, v35

    .line 1875
    .end local v34    # "space":I
    .end local v35    # "spaceAbove":I
    .local v45, "titleTop":I
    :goto_b
    if-eqz v18, :cond_1a

    .line 1876
    if-eqz v41, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    move/from16 v49, v0

    :goto_c
    const/16 v50, 0x1

    aget v50, v12, v50

    sub-int v31, v49, v50

    .line 1877
    .local v31, "rd":I
    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    sub-int v32, v32, v49

    .line 1878
    const/16 v49, 0x1

    const/16 v50, 0x0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    aput v50, v12, v49

    .line 1879
    move/from16 v44, v32

    .line 1880
    .local v44, "titleRight":I
    move/from16 v39, v32

    .line 1882
    .local v39, "subtitleRight":I
    if-eqz v20, :cond_b

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1884
    .restart local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    sub-int v43, v44, v49

    .line 1885
    .local v43, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v40, v45, v49

    .line 1886
    .local v40, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v43

    move/from16 v2, v45

    move/from16 v3, v44

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1887
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    sub-int v44, v43, v49

    .line 1888
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v40, v49

    .line 1890
    .end local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v40    # "titleBottom":I
    .end local v43    # "titleLeft":I
    :cond_b
    if-eqz v19, :cond_c

    .line 1891
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1892
    .restart local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    add-int v45, v45, v49

    .line 1893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    sub-int v38, v39, v49

    .line 1894
    .local v38, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v37, v45, v49

    .line 1895
    .local v37, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v38

    move/from16 v2, v45

    move/from16 v3, v39

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    sub-int v39, v39, v49

    .line 1897
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v37, v49

    .line 1899
    .end local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v37    # "subtitleBottom":I
    .end local v38    # "subtitleLeft":I
    :cond_c
    if-eqz v41, :cond_d

    .line 1900
    move/from16 v0, v44

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v32

    .line 1935
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v31    # "rd":I
    .end local v39    # "subtitleRight":I
    .end local v41    # "titleHasWidth":Z
    .end local v44    # "titleRight":I
    .end local v45    # "titleTop":I
    .end local v46    # "topChild":Landroid/view/View;
    .end local v47    # "toplp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_d
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1937
    .local v23, "leftViewsCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_e
    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e

    .line 1938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    .line 1937
    add-int/lit8 v17, v17, 0x1

    goto :goto_e

    .line 1755
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v13    # "contentInsetLeft":I
    .end local v14    # "contentInsetRight":I
    .end local v16    # "height":I
    .end local v17    # "i":I
    .end local v18    # "isRtl":Z
    .end local v19    # "layoutSubtitle":Z
    .end local v20    # "layoutTitle":Z
    .end local v22    # "left":I
    .end local v23    # "leftViewsCount":I
    .end local v25    # "minHeight":I
    .end local v26    # "paddingBottom":I
    .end local v27    # "paddingLeft":I
    .end local v28    # "paddingRight":I
    .end local v29    # "paddingTop":I
    .end local v32    # "right":I
    .end local v42    # "titleHeight":I
    .end local v48    # "width":I
    :cond_e
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1770
    .restart local v12    # "collapsingMargins":[I
    .restart local v16    # "height":I
    .restart local v18    # "isRtl":Z
    .restart local v22    # "left":I
    .restart local v25    # "minHeight":I
    .restart local v26    # "paddingBottom":I
    .restart local v27    # "paddingLeft":I
    .restart local v28    # "paddingRight":I
    .restart local v29    # "paddingTop":I
    .restart local v32    # "right":I
    .restart local v48    # "width":I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 1777
    .restart local v5    # "alignmentHeight":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_2

    .line 1787
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_3

    .line 1797
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    goto/16 :goto_4

    .line 1814
    .restart local v13    # "contentInsetLeft":I
    .restart local v14    # "contentInsetRight":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_5

    .line 1824
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v22

    goto/16 :goto_6

    .line 1843
    .restart local v19    # "layoutSubtitle":Z
    .restart local v20    # "layoutTitle":Z
    .restart local v42    # "titleHeight":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    goto/16 :goto_7

    .line 1844
    .restart local v46    # "topChild":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_8

    .line 1848
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .restart local v47    # "toplp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_17
    const/16 v41, 0x0

    goto/16 :goto_9

    .line 1852
    .restart local v41    # "titleHasWidth":Z
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v49

    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v50, v0

    add-int v49, v49, v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    move/from16 v50, v0

    add-int v45, v49, v50

    .line 1853
    .restart local v45    # "titleTop":I
    goto/16 :goto_b

    .line 1861
    .end local v45    # "titleTop":I
    .restart local v34    # "space":I
    .restart local v35    # "spaceAbove":I
    :cond_18
    sub-int v49, v16, v26

    sub-int v49, v49, v42

    sub-int v49, v49, v35

    sub-int v36, v49, v29

    .line 1863
    .local v36, "spaceBelow":I
    move-object/from16 v0, v47

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    move/from16 v50, v0

    add-int v49, v49, v50

    move/from16 v0, v36

    move/from16 v1, v49

    if-ge v0, v1, :cond_a

    .line 1864
    const/16 v49, 0x0

    iget v0, v7, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    move/from16 v51, v0

    add-int v50, v50, v51

    sub-int v50, v50, v36

    sub-int v50, v35, v50

    invoke-static/range {v49 .. v50}, Ljava/lang/Math;->max(II)I

    move-result v35

    goto/16 :goto_a

    .line 1871
    .end local v34    # "space":I
    .end local v35    # "spaceAbove":I
    .end local v36    # "spaceBelow":I
    :sswitch_1
    sub-int v49, v16, v26

    iget v0, v7, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v50, v0

    sub-int v49, v49, v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    move/from16 v50, v0

    sub-int v49, v49, v50

    sub-int v45, v49, v42

    .restart local v45    # "titleTop":I
    goto/16 :goto_b

    .line 1876
    :cond_19
    const/16 v49, 0x0

    goto/16 :goto_c

    .line 1903
    :cond_1a
    if-eqz v41, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    move/from16 v49, v0

    :goto_f
    const/16 v50, 0x0

    aget v50, v12, v50

    sub-int v21, v49, v50

    .line 1904
    .local v21, "ld":I
    const/16 v49, 0x0

    move/from16 v0, v49

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v49

    add-int v22, v22, v49

    .line 1905
    const/16 v49, 0x0

    const/16 v50, 0x0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v51, v0

    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->max(II)I

    move-result v50

    aput v50, v12, v49

    .line 1906
    move/from16 v43, v22

    .line 1907
    .restart local v43    # "titleLeft":I
    move/from16 v38, v22

    .line 1909
    .restart local v38    # "subtitleLeft":I
    if-eqz v20, :cond_1b

    .line 1910
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1911
    .restart local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    add-int v44, v43, v49

    .line 1912
    .restart local v44    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v40, v45, v49

    .line 1913
    .restart local v40    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v43

    move/from16 v2, v45

    move/from16 v3, v44

    move/from16 v4, v40

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    add-int v43, v44, v49

    .line 1915
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v40, v49

    .line 1917
    .end local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v40    # "titleBottom":I
    .end local v44    # "titleRight":I
    :cond_1b
    if-eqz v19, :cond_1c

    .line 1918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1919
    .restart local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->topMargin:I

    move/from16 v49, v0

    add-int v45, v45, v49

    .line 1920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v49

    add-int v39, v38, v49

    .line 1921
    .restart local v39    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v49

    add-int v37, v45, v49

    .line 1922
    .restart local v37    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v38

    move/from16 v2, v45

    move/from16 v3, v39

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1923
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    move/from16 v49, v0

    add-int v38, v39, v49

    .line 1924
    move-object/from16 v0, v24

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->bottomMargin:I

    move/from16 v49, v0

    add-int v45, v37, v49

    .line 1926
    .end local v24    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v37    # "subtitleBottom":I
    .end local v39    # "subtitleRight":I
    :cond_1c
    if-eqz v41, :cond_d

    .line 1927
    move/from16 v0, v43

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    goto/16 :goto_d

    .line 1903
    .end local v21    # "ld":I
    .end local v38    # "subtitleLeft":I
    .end local v43    # "titleLeft":I
    :cond_1d
    const/16 v49, 0x0

    goto/16 :goto_f

    .line 1942
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v41    # "titleHasWidth":Z
    .end local v45    # "titleTop":I
    .end local v46    # "topChild":Landroid/view/View;
    .end local v47    # "toplp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .restart local v17    # "i":I
    .restart local v23    # "leftViewsCount":I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v33

    .line 1944
    .local v33, "rightViewsCount":I
    const/16 v17, 0x0

    :goto_10
    move/from16 v0, v17

    move/from16 v1, v33

    if-ge v0, v1, :cond_1f

    .line 1945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v32

    invoke-direct {v0, v1, v2, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v32

    .line 1944
    add-int/lit8 v17, v17, 0x1

    goto :goto_10

    .line 1951
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    const/16 v50, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 1952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 1953
    .local v11, "centerViewsWidth":I
    sub-int v49, v48, v27

    sub-int v49, v49, v28

    div-int/lit8 v49, v49, 0x2

    add-int v30, v27, v49

    .line 1954
    .local v30, "parentCenter":I
    div-int/lit8 v15, v11, 0x2

    .line 1955
    .local v15, "halfCenterViewsWidth":I
    sub-int v8, v30, v15

    .line 1956
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 1957
    .local v9, "centerRight":I
    move/from16 v0, v22

    if-ge v8, v0, :cond_21

    .line 1958
    move/from16 v8, v22

    .line 1963
    :cond_20
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1964
    .local v10, "centerViewsCount":I
    const/16 v17, 0x0

    :goto_12
    move/from16 v0, v17

    if-ge v0, v10, :cond_22

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    move-object/from16 v0, v49

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v8, v12, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    .line 1964
    add-int/lit8 v17, v17, 0x1

    goto :goto_12

    .line 1959
    .end local v10    # "centerViewsCount":I
    :cond_21
    move/from16 v0, v32

    if-le v9, v0, :cond_20

    .line 1960
    sub-int v49, v9, v32

    sub-int v8, v8, v49

    goto :goto_11

    .line 1969
    .restart local v10    # "centerViewsCount":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempViews:Ljava/util/ArrayList;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->clear()V

    .line 1970
    return-void

    .line 1850
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 41
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1603
    const/4 v6, 0x0

    .line 1604
    .local v6, "width":I
    const/16 v27, 0x0

    .line 1605
    .local v27, "height":I
    const/16 v23, 0x0

    .line 1607
    .local v23, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTempMargins:[I

    .line 1610
    .local v13, "collapsingMargins":[I
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1611
    const/16 v31, 0x1

    .line 1612
    .local v31, "marginStartIndex":I
    const/16 v30, 0x0

    .line 1620
    .local v30, "marginEndIndex":I
    :goto_0
    const/16 v35, 0x0

    .line 1621
    .local v35, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1622
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1626
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1625
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    .line 1628
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    .line 1627
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1631
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1635
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1636
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1637
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1636
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1639
    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    .line 1638
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1642
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetStart()I

    move-result v25

    .line 1643
    .local v25, "contentInsetStart":I
    move/from16 v0, v25

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1644
    const/4 v3, 0x0

    sub-int v5, v25, v35

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v31

    .line 1646
    const/16 v34, 0x0

    .line 1647
    .local v34, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1650
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1651
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 1652
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1651
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1653
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    .line 1654
    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->getMeasuredState()I

    move-result v3

    .line 1653
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1657
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getCurrentContentInsetEnd()I

    move-result v24

    .line 1658
    .local v24, "contentInsetEnd":I
    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1659
    const/4 v3, 0x0

    sub-int v5, v24, v34

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v30

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    .line 1665
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1664
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedActionView:Landroid/view/View;

    .line 1667
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    .line 1666
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1670
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1671
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1674
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    .line 1673
    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    .line 1676
    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v3

    .line 1675
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1679
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildCount()I

    move-result v22

    .line 1680
    .local v22, "childCount":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 1681
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1682
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 1683
    .local v29, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1680
    :cond_5
    :goto_2
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 1614
    .end local v4    # "child":Landroid/view/View;
    .end local v22    # "childCount":I
    .end local v24    # "contentInsetEnd":I
    .end local v25    # "contentInsetStart":I
    .end local v28    # "i":I
    .end local v29    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .end local v30    # "marginEndIndex":I
    .end local v31    # "marginStartIndex":I
    .end local v34    # "menuWidth":I
    .end local v35    # "navWidth":I
    :cond_6
    const/16 v31, 0x0

    .line 1615
    .restart local v31    # "marginStartIndex":I
    const/16 v30, 0x1

    .restart local v30    # "marginEndIndex":I
    goto/16 :goto_0

    .line 1688
    .restart local v4    # "child":Landroid/view/View;
    .restart local v22    # "childCount":I
    .restart local v24    # "contentInsetEnd":I
    .restart local v25    # "contentInsetStart":I
    .restart local v28    # "i":I
    .restart local v29    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    .restart local v34    # "menuWidth":I
    .restart local v35    # "navWidth":I
    :cond_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1690
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1692
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    .line 1691
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    goto :goto_2

    .line 1695
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_8
    const/16 v39, 0x0

    .line 1696
    .local v39, "titleWidth":I
    const/16 v37, 0x0

    .line 1697
    .local v37, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1698
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    add-int v38, v3, v5

    .line 1699
    .local v38, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1701
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextAppearance:I

    sget-object v7, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance:[I

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 1702
    .local v21, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/samsung/android/support/sesl/R$styleable;->SeslTextAppearance_android_textSize:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v40

    .line 1703
    .local v40, "value":Landroid/util/TypedValue;
    move-object/from16 v0, v40

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v36

    .line 1704
    .local v36, "textSize":F
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 1706
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v36, v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1707
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v26, v0

    .line 1708
    .local v26, "fontScale":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxFontScale:F

    cmpl-float v3, v26, v3

    if-lez v3, :cond_9

    .line 1709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMaxFontScale:F

    move/from16 v26, v0

    .line 1711
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    mul-float v7, v36, v26

    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1716
    .end local v26    # "fontScale":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v38

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v39

    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v39, v3, v5

    .line 1720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v37, v3, v5

    .line 1721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 1722
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    .line 1721
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1724
    .end local v21    # "a":Landroid/content/res/TypedArray;
    .end local v36    # "textSize":F
    .end local v40    # "value":Landroid/util/TypedValue;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1725
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v38

    add-int v19, v37, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 1729
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1730
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v37, v37, v3

    .line 1731
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 1732
    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    .line 1731
    move/from16 v0, v23

    invoke-static {v0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslViewUtils;->combineMeasuredStates(II)I

    move-result v23

    .line 1735
    :cond_b
    add-int v6, v6, v39

    .line 1736
    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1740
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1741
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v27, v27, v3

    .line 1744
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v23

    .line 1743
    move/from16 v0, p1

    invoke-static {v3, v0, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v33

    .line 1747
    .local v33, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v23, 0x10

    .line 1746
    move/from16 v0, p2

    invoke-static {v3, v0, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v32

    .line 1750
    .local v32, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v32, 0x0

    .end local v32    # "measuredHeight":I
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setMeasuredDimension(II)V

    .line 1751
    return-void

    .line 1713
    .end local v33    # "measuredWidth":I
    .restart local v21    # "a":Landroid/content/res/TypedArray;
    .restart local v36    # "textSize":F
    .restart local v40    # "value":Landroid/util/TypedValue;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    move/from16 v0, v36

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1455
    instance-of v3, p1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;

    if-nez v3, :cond_1

    .line 1456
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1474
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, p1

    .line 1460
    check-cast v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;

    .line 1461
    .local v2, "ss":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;
    invoke-virtual {v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1463
    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->peekMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v1

    .line 1464
    .local v1, "menu":Landroid/view/Menu;
    :goto_1
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 1465
    iget v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1466
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1467
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1471
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_2
    iget-boolean v3, v2, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_0

    .line 1472
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->postShowOverflowMenu()V

    goto :goto_0

    .line 1463
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 510
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 512
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureContentInsets()V

    .line 513
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->setDirection(Z)V

    .line 514
    return-void

    .line 513
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1443
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1445
    .local v0, "state":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    if-eqz v1, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->expandedMenuItemId:I

    .line 1449
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$SavedState;->isOverflowOpen:Z

    .line 1450
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1494
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1495
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 1496
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingTouch:Z

    .line 1499
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingTouch:Z

    if-nez v2, :cond_1

    .line 1500
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1501
    .local v1, "handled":Z
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 1502
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingTouch:Z

    .line 1506
    .end local v1    # "handled":Z
    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1507
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mEatingTouch:Z

    .line 1510
    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 6

    .prologue
    .line 2167
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildCount()I

    move-result v1

    .line 2169
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 2170
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2171
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;

    .line 2172
    .local v3, "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    iget v4, v3, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eq v0, v4, :cond_0

    .line 2173
    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeViewAt(I)V

    .line 2174
    iget-object v4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2169
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2177
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$LayoutParams;
    :cond_1
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 0
    .param p1, "collapsible"    # Z
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2199
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mCollapsible:Z

    .line 2200
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 2201
    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1
    .param p1, "insetEndWithActions"    # I

    .prologue
    .line 1311
    if-gez p1, :cond_0

    .line 1312
    const/high16 p1, -0x80000000

    .line 1314
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    .line 1315
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetEndWithActions:I

    .line 1316
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1317
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 1320
    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1
    .param p1, "insetStartWithNavigation"    # I

    .prologue
    .line 1269
    if-gez p1, :cond_0

    .line 1270
    const/high16 p1, -0x80000000

    .line 1272
    :cond_0
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    .line 1273
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsetStartWithNavigation:I

    .line 1274
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1275
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 1278
    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 1
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 1193
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureContentInsets()V

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->setAbsolute(II)V

    .line 1195
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 1
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 1130
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureContentInsets()V

    .line 1131
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mContentInsets:Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslRtlSpacingHelper;->setRelative(II)V

    .line 1132
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 527
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 646
    if-eqz p1, :cond_2

    .line 647
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureLogoView()V

    .line 648
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addSystemView(Landroid/view/View;Z)V

    .line 655
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 658
    :cond_1
    return-void

    .line 651
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 653
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setLogoDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    .line 681
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 692
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureLogoView()V

    .line 695
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 696
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 698
    :cond_1
    return-void
.end method

.method public setMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V
    .locals 5
    .param p1, "menu"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    .param p2, "outerPresenter"    # Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 572
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-nez v1, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureMenuView()V

    .line 577
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->peekMenu()Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    move-result-object v0

    .line 578
    .local v0, "oldMenu":Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;
    if-eq v0, p1, :cond_0

    .line 582
    if-eqz v0, :cond_2

    .line 583
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mOuterActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 584
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->removeMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;)V

    .line 587
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_3

    .line 588
    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    .line 591
    :cond_3
    invoke-virtual {p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 592
    if-eqz p1, :cond_4

    .line 593
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 594
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;->addMenuPresenter(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter;Landroid/content/Context;)V

    .line 601
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupTheme:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setPopupTheme(I)V

    .line 602
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setPresenter(Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V

    .line 603
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mOuterActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    goto :goto_0

    .line 596
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 597
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;)V

    .line 598
    invoke-virtual {p2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->updateMenuView(Z)V

    .line 599
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mExpandedMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_1
.end method

.method public setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V
    .locals 1
    .param p1, "pcb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 2209
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mActionMenuPresenterCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .line 2210
    iput-object p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuBuilderCallback:Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    .line 2211
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    .line 2212
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 2214
    :cond_0
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 928
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 929
    return-void

    .line 928
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 942
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureNavButtonView()V

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 946
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 948
    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 966
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 983
    if-eqz p1, :cond_2

    .line 984
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureNavButtonView()V

    .line 985
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addSystemView(Landroid/view/View;Z)V

    .line 992
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 995
    :cond_1
    return-void

    .line 988
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 990
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureNavButtonView()V

    .line 1020
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1021
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mOnMenuItemClickListener:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar$OnMenuItemClickListener;

    .line 1109
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1042
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->ensureMenu()V

    .line 1043
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1044
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 381
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_0

    .line 382
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupTheme:I

    .line 383
    if-nez p1, :cond_1

    .line 384
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 821
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 831
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 832
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 834
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    .line 835
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 836
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 837
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 840
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextColor:I

    if-eqz v1, :cond_1

    .line 841
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 844
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 845
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addSystemView(Landroid/view/View;Z)V

    .line 851
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 852
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleText:Ljava/lang/CharSequence;

    .line 855
    return-void

    .line 847
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 848
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 849
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 873
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextAppearance:I

    .line 874
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 877
    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 897
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextColor:I

    .line 898
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 899
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 901
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 766
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 778
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 779
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 780
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    .line 781
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 782
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 783
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextAppearance:I

    if-eqz v1, :cond_0

    .line 784
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextAppearance:I

    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 786
    :cond_0
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextColor:I

    if-eqz v1, :cond_1

    .line 787
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 790
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addSystemView(Landroid/view/View;Z)V

    .line 797
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 798
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    :cond_3
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleText:Ljava/lang/CharSequence;

    .line 801
    return-void

    .line 793
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 794
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 795
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setTitleMargin(IIII)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    .line 415
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    .line 416
    iput p3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    .line 417
    iput p4, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    .line 419
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 420
    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 505
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginBottom:I

    .line 506
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 507
    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 483
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginEnd:I

    .line 485
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 486
    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 439
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginStart:I

    .line 441
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 442
    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0
    .param p1, "margin"    # I

    .prologue
    .line 461
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleMarginTop:I

    .line 463
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->requestLayout()V

    .line 464
    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 862
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextAppearance:I

    .line 863
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 866
    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 885
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextColor:I

    .line 886
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->mMenuView:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
