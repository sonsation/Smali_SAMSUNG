.class public Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;
.super Ljava/lang/Object;
.source "SeslToolbarWidgetWrapper.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/component/widget/SeslDecorToolbar;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final AFFECTS_LOGO_MASK:I = 0x3

.field private static final DEFAULT_FADE_DURATION_MS:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "SeslToolbarWidgetWrap"


# instance fields
.field private mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

.field private mCustomView:Landroid/view/View;

.field private mDefaultNavigationContentDescription:I

.field private mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

.field private mDisplayOpts:I

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field mMenuPrepared:Z

.field private mNavIcon:Landroid/graphics/drawable/Drawable;

.field private mSubtitle:Ljava/lang/CharSequence;

.field mTitle:Ljava/lang/CharSequence;

.field private mTitleSet:Z

.field mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;Z)V
    .locals 2
    .param p1, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
    .param p2, "style"    # Z

    .prologue
    .line 87
    sget v0, Lcom/samsung/android/support/sesl/R$string;->sesl_action_bar_up_description:I

    sget v1, Lcom/samsung/android/support/sesl/R$drawable;->sesl_ic_ab_back:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;ZII)V

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;ZII)V
    .locals 20
    .param p1, "toolbar"    # Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;
    .param p2, "style"    # Z
    .param p3, "defaultNavigationContentDescription"    # I
    .param p4, "defaultNavigationIcon"    # I

    .prologue
    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 93
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 95
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 96
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitleSet:Z

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    sget-object v17, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar:[I

    const v18, 0x10102ce

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 100
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_homeAsUpIndicator:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 101
    if-eqz p2, :cond_d

    .line 102
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_title:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 103
    .local v13, "title":Ljava/lang/CharSequence;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setTitle(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_subtitle:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 108
    .local v11, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 109
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 112
    :cond_1
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_logo:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 113
    .local v8, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    .line 114
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :cond_2
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_icon:I

    invoke-virtual {v2, v15}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 118
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_3

    .line 119
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_4

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    :cond_4
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_displayOptions:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 126
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_customNavigationLayout:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 128
    .local v5, "customNavId":I
    if-eqz v5, :cond_5

    .line 129
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v15, v5, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setCustomView(Landroid/view/View;)V

    .line 131
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    or-int/lit8 v15, v15, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setDisplayOptions(I)V

    .line 134
    :cond_5
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_height:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v6

    .line 135
    .local v6, "height":I
    if-lez v6, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 137
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v15, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    .end local v9    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_contentInsetStart:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 143
    .local v4, "contentInsetStart":I
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_contentInsetEnd:I

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 145
    .local v3, "contentInsetEnd":I
    if-gez v4, :cond_7

    if-ltz v3, :cond_8

    .line 146
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v16

    const/16 v17, 0x0

    .line 147
    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 146
    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setContentInsetsRelative(II)V

    .line 150
    :cond_8
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_titleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 151
    .local v14, "titleTextStyle":I
    if-eqz v14, :cond_9

    .line 152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    .line 155
    :cond_9
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_subtitleTextStyle:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 157
    .local v12, "subtitleTextStyle":I
    if-eqz v12, :cond_a

    .line 158
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v12}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    .line 161
    :cond_a
    sget v15, Lcom/samsung/android/support/sesl/R$styleable;->SeslActionBar_android_popupTheme:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 162
    .local v10, "popupTheme":I
    if-eqz v10, :cond_b

    .line 163
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v15, v10}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setPopupTheme(I)V

    .line 168
    .end local v3    # "contentInsetEnd":I
    .end local v4    # "contentInsetStart":I
    .end local v5    # "customNavId":I
    .end local v6    # "height":I
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v10    # "popupTheme":I
    .end local v11    # "subtitle":Ljava/lang/CharSequence;
    .end local v12    # "subtitleTextStyle":I
    .end local v13    # "title":Ljava/lang/CharSequence;
    .end local v14    # "titleTextStyle":I
    :cond_b
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 170
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setDefaultNavigationContentDescription(I)V

    .line 171
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v15}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 173
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    new-instance v16, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$1;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;)V

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void

    .line 96
    .end local v2    # "a":Landroid/content/res/TypedArray;
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 166
    .restart local v2    # "a":Landroid/content/res/TypedArray;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->detectDisplayOptions()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    goto :goto_1
.end method

.method private detectDisplayOptions()I
    .locals 2

    .prologue
    .line 197
    const/16 v0, 0xb

    .line 199
    .local v0, "opts":I
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    or-int/lit8 v0, v0, 0x4

    .line 201
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 203
    :cond_0
    return v0
.end method

.method private setTitleInt(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    .line 252
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 255
    :cond_0
    return-void
.end method

.method private updateHomeAccessibility()V
    .locals 2

    .prologue
    .line 518
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationContentDescription(I)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateNavigationIcon()V
    .locals 2

    .prologue
    .line 499
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 500
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 504
    :goto_1
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private updateToolbarLogo()V
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "logo":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 315
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 321
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 322
    return-void

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    .line 444
    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 446
    .local v0, "anim":Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    if-eqz v0, :cond_0

    .line 447
    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->start()V

    .line 449
    :cond_0
    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public collapseActionView()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->collapseActionView()V

    .line 224
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->dismissPopupMenus()V

    .line 367
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getVisibility()I

    move-result v0

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->hasExpandedActionView()Z

    move-result v0

    return v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

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
    .line 346
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initIndeterminateProgress()V
    .locals 2

    .prologue
    .line 277
    const-string v0, "SeslToolbarWidgetWrap"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void
.end method

.method public initProgress()V
    .locals 2

    .prologue
    .line 272
    const-string v0, "SeslToolbarWidgetWrap"

    const-string v1, "Progress display unsupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->isTitleTruncated()Z

    move-result v0

    return v0
.end method

.method public restoreHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 534
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 535
    return-void
.end method

.method public saveHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "toolbarStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 530
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 540
    return-void
.end method

.method public setCollapsible(Z)V
    .locals 1
    .param p1, "collapsible"    # Z

    .prologue
    .line 418
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setCollapsible(Z)V

    .line 419
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    .line 431
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    .line 432
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addView(Landroid/view/View;)V

    .line 435
    :cond_1
    return-void
.end method

.method public setDefaultNavigationContentDescription(I)V
    .locals 1
    .param p1, "defaultNavigationContentDescription"    # I

    .prologue
    .line 187
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    if-ne p1, v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    .line 191
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationContentDescription:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setNavigationContentDescription(I)V

    goto :goto_0
.end method

.method public setDefaultNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "defaultNavigationIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 493
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDefaultNavigationIcon:Landroid/graphics/drawable/Drawable;

    .line 494
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 496
    :cond_0
    return-void
.end method

.method public setDisplayOptions(I)V
    .locals 4
    .param p1, "newOpts"    # I

    .prologue
    const/4 v3, 0x0

    .line 376
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    .line 377
    .local v1, "oldOpts":I
    xor-int v0, v1, p1

    .line 378
    .local v0, "changed":I
    iput p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    .line 379
    if-eqz v0, :cond_4

    .line 380
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1

    .line 381
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 384
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 387
    :cond_1
    and-int/lit8 v2, v0, 0x3

    if-eqz v2, :cond_2

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 391
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 392
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_5

    .line 393
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 394
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 401
    :cond_3
    :goto_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 402
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_6

    .line 403
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->addView(Landroid/view/View;)V

    .line 409
    :cond_4
    :goto_1
    return-void

    .line 396
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 397
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 405
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    iget-object v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mCustomView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 424
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 292
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 293
    return-void

    .line 292
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 298
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 299
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 303
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 304
    return-void

    .line 303
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateToolbarLogo()V

    .line 310
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    .line 358
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    sget v1, Lcom/samsung/android/support/sesl/R$id;->action_menu_presenter:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setId(I)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;->setCallback(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;)V

    .line 361
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    check-cast p1, Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;

    .end local p1    # "menu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mActionMenuPresenter:Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setMenu(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder;Lcom/samsung/android/support/sesl/component/widget/SeslActionMenuPresenter;)V

    .line 362
    return-void
.end method

.method public setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V
    .locals 1
    .param p1, "actionMenuPresenterCallback"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;
    .param p2, "menuBuilderCallback"    # Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setMenuCallbacks(Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuPresenter$Callback;Lcom/samsung/android/support/sesl/component/view/menu/SeslMenuBuilder$Callback;)V

    .line 561
    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mMenuPrepared:Z

    .line 352
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 514
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 515
    return-void

    .line 514
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mHomeDescription:Ljava/lang/CharSequence;

    .line 509
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateHomeAccessibility()V

    .line 510
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 487
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 488
    return-void

    .line 487
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mNavIcon:Landroid/graphics/drawable/Drawable;

    .line 482
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->updateNavigationIcon()V

    .line 483
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mSubtitle:Ljava/lang/CharSequence;

    .line 265
    iget v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mDisplayOpts:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitleSet:Z

    .line 247
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 248
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 549
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->setVisibility(I)V

    .line 550
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mWindowCallback:Landroid/view/Window$Callback;

    .line 229
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mTitleSet:Z

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->setTitleInt(Ljava/lang/CharSequence;)V

    .line 237
    :cond_0
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;
    .locals 2
    .param p1, "visibility"    # I
    .param p2, "duration"    # J

    .prologue
    .line 454
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewCompat;->animate(Landroid/view/View;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v1

    if-nez p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 455
    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->alpha(F)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 456
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setDuration(J)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper$2;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;I)V

    .line 457
    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->setListener(Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorListener;)Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    move-result-object v0

    .line 454
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showOverflowMenu()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslToolbarWidgetWrapper;->mToolbar:Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method
