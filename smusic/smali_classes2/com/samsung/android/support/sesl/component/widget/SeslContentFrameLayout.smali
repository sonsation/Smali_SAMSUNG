.class public Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "SeslContentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;
    }
.end annotation


# instance fields
.field private mAttachListener:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

.field private mAvailableWidth:F

.field private final mDecorPadding:Landroid/graphics/Rect;

.field private mFixedHeightMajor:Landroid/util/TypedValue;

.field private mFixedHeightMinor:Landroid/util/TypedValue;

.field private mFixedWidthMajor:Landroid/util/TypedValue;

.field private mFixedWidthMinor:Landroid/util/TypedValue;

.field private mMinWidthMajor:Landroid/util/TypedValue;

.field private mMinWidthMinor:Landroid/util/TypedValue;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->updateAvailableWidth()V

    .line 72
    return-void
.end method

.method private updateAvailableWidth()V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 181
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 181
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAvailableWidth:F

    .line 183
    return-void
.end method


# virtual methods
.method public dispatchFitSystemWindows(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "insets"    # Landroid/graphics/Rect;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 80
    return-void
.end method

.method public getFixedHeightMajor()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedHeightMinor()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getFixedWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMajor()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    return-object v0
.end method

.method public getMinWidthMinor()Landroid/util/TypedValue;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 226
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 227
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAttachListener:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAttachListener:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;->onAttachedFromWindow()V

    .line 230
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v3, 0x1

    .line 187
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010357

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x1010356

    iget-object v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->updateAvailableWidth()V

    .line 192
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAttachListener:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAttachListener:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

    invoke-interface {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;->onDetachedFromWindow()V

    .line 238
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    .line 103
    .local v9, "metrics":Landroid/util/DisplayMetrics;
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    const/4 v6, 0x1

    .line 105
    .local v6, "isPortrait":Z
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    .line 106
    .local v16, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 108
    .local v4, "heightMode":I
    const/4 v2, 0x0

    .line 109
    .local v2, "fixedWidth":Z
    const/high16 v18, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 110
    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMinor:Landroid/util/TypedValue;

    .line 111
    .local v13, "tvw":Landroid/util/TypedValue;
    :goto_1
    if-eqz v13, :cond_1

    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 112
    const/4 v14, 0x0

    .line 113
    .local v14, "w":I
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 114
    invoke-virtual {v13, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    .line 118
    :cond_0
    :goto_2
    if-lez v14, :cond_1

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v14, v14, v18

    .line 120
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 122
    .local v17, "widthSize":I
    move/from16 v0, v17

    invoke-static {v14, v0}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    .line 121
    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 123
    const/4 v2, 0x1

    .line 128
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    .end local v17    # "widthSize":I
    :cond_1
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-ne v4, v0, :cond_3

    .line 129
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMajor:Landroid/util/TypedValue;

    .line 130
    .local v12, "tvh":Landroid/util/TypedValue;
    :goto_3
    if-eqz v12, :cond_3

    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    if-eqz v18, :cond_3

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, "h":I
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 133
    invoke-virtual {v12, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v3, v0

    .line 137
    :cond_2
    :goto_4
    if-lez v3, :cond_3

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v3, v3, v18

    .line 139
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 141
    .local v5, "heightSize":I
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v18

    const/high16 v19, 0x40000000    # 2.0f

    .line 140
    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 146
    .end local v3    # "h":I
    .end local v5    # "heightSize":I
    .end local v12    # "tvh":Landroid/util/TypedValue;
    :cond_3
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getMeasuredWidth()I

    move-result v15

    .line 149
    .local v15, "width":I
    const/4 v8, 0x0

    .line 151
    .local v8, "measure":Z
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 153
    if-nez v2, :cond_7

    const/high16 v18, -0x80000000

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 154
    if-eqz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMinor:Landroid/util/TypedValue;

    .line 155
    .local v11, "tv":Landroid/util/TypedValue;
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v18, v0

    const/16 v19, 0x258

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_f

    const/4 v7, 0x1

    .line 156
    .local v7, "isTablet":Z
    :goto_6
    if-eqz v11, :cond_7

    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 157
    const/4 v10, 0x0

    .line 158
    .local v10, "min":I
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 159
    invoke-virtual {v11, v9}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    .line 164
    :cond_4
    :goto_7
    if-lez v10, :cond_5

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v10, v10, v18

    .line 167
    :cond_5
    if-lt v15, v10, :cond_6

    if-eqz v7, :cond_7

    .line 168
    :cond_6
    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 169
    const/4 v8, 0x1

    .line 174
    .end local v7    # "isTablet":Z
    .end local v10    # "min":I
    .end local v11    # "tv":Landroid/util/TypedValue;
    :cond_7
    if-eqz v8, :cond_8

    .line 175
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 177
    :cond_8
    return-void

    .line 103
    .end local v2    # "fixedWidth":Z
    .end local v4    # "heightMode":I
    .end local v6    # "isPortrait":Z
    .end local v8    # "measure":Z
    .end local v15    # "width":I
    .end local v16    # "widthMode":I
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 110
    .restart local v2    # "fixedWidth":Z
    .restart local v4    # "heightMode":I
    .restart local v6    # "isPortrait":Z
    .restart local v16    # "widthMode":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_1

    .line 115
    .restart local v13    # "tvw":Landroid/util/TypedValue;
    .restart local v14    # "w":I
    :cond_b
    iget v0, v13, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 116
    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v14, v0

    goto/16 :goto_2

    .line 129
    .end local v13    # "tvw":Landroid/util/TypedValue;
    .end local v14    # "w":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mFixedHeightMinor:Landroid/util/TypedValue;

    goto/16 :goto_3

    .line 134
    .restart local v3    # "h":I
    .restart local v12    # "tvh":Landroid/util/TypedValue;
    :cond_d
    iget v0, v12, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 135
    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v3, v0

    goto/16 :goto_4

    .line 154
    .end local v3    # "h":I
    .end local v12    # "tvh":Landroid/util/TypedValue;
    .restart local v8    # "measure":Z
    .restart local v15    # "width":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mMinWidthMajor:Landroid/util/TypedValue;

    goto/16 :goto_5

    .line 155
    .restart local v11    # "tv":Landroid/util/TypedValue;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 160
    .restart local v7    # "isTablet":Z
    .restart local v10    # "min":I
    :cond_10
    iget v0, v11, Landroid/util/TypedValue;->type:I

    move/from16 v18, v0

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 161
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->updateAvailableWidth()V

    .line 162
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAvailableWidth:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAvailableWidth:F

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    goto/16 :goto_7
.end method

.method public setAttachListener(Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;)V
    .locals 0
    .param p1, "attachListener"    # Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mAttachListener:Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout$OnAttachListener;

    .line 84
    return-void
.end method

.method public setDecorPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->GROUP_ID:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->mDecorPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslContentFrameLayout;->requestLayout()V

    .line 98
    :cond_0
    return-void
.end method
