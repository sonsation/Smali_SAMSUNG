.class public Lcom/android/launcher3/widget/view/WidgetPageLayout;
.super Landroid/widget/GridLayout;
.source "WidgetPageLayout.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Page;


# static fields
.field private static final TAG:Ljava/lang/String; = "WidgetPageLayout"

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mHorizontalGap:I

.field private mItemKeyListener:Landroid/view/View$OnKeyListener;

.field private mVerticalGap:I

.field private mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

.field private mWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->sPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->WidgetPageLayout:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 65
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mHorizontalGap:I

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mVerticalGap:I

    .line 69
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredWidth:I

    .line 71
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredHeight:I

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method private configureNextFocus(ILandroid/view/View;I)I
    .locals 4
    .param p1, "nextFocusId"    # I
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "pos"    # I

    .prologue
    const/4 v3, -0x1

    .line 218
    if-eq p1, v3, :cond_0

    .line 219
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    .line 220
    invoke-virtual {p2, p1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 225
    :cond_0
    :goto_0
    const/4 v0, -0x1

    .line 226
    .local v0, "id":I
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 227
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    .line 228
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 230
    :cond_1
    const/4 v1, 0x0

    .line 231
    .local v1, "privChild":Landroid/view/View;
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_2

    .line 233
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    .line 234
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 239
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p1

    .line 240
    return p1

    .line 222
    .end local v0    # "id":I
    .end local v1    # "privChild":Landroid/view/View;
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/View;->setNextFocusLeftId(I)V

    goto :goto_0

    .line 236
    .restart local v0    # "id":I
    .restart local v1    # "privChild":Landroid/view/View;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setNextFocusRightId(I)V

    goto :goto_1
.end method

.method private getContentRowCount()I
    .locals 1

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getRowCount()I

    move-result v0

    return v0
.end method


# virtual methods
.method public bindItems(Ljava/util/List;Ljava/lang/String;Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 12
    .param p2, "search"    # Ljava/lang/String;
    .param p3, "state"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/widget/controller/WidgetState$State;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 188
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    .line 189
    .local v7, "size":I
    const/4 v6, -0x1

    .line 190
    .local v6, "nextFocusId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_5

    .line 191
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 192
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 190
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_1
    iget-object v11, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v9, :cond_4

    move v8, v9

    :goto_2
    invoke-interface {v11, v8, p0}, Lcom/android/launcher3/widget/view/ViewRecycler;->get(ZLandroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    .line 195
    .local v2, "itemView":Lcom/android/launcher3/widget/view/WidgetItemView;
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTag(Ljava/lang/Object;)V

    .line 196
    invoke-virtual {v2, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setWidgets(Ljava/util/List;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getColumnCount()I

    move-result v8

    rem-int v3, v0, v8

    .line 198
    .local v3, "ix":I
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getColumnCount()I

    move-result v8

    div-int v4, v0, v8

    .line 199
    .local v4, "iy":I
    new-instance v5, Landroid/widget/GridLayout$LayoutParams;

    sget-object v8, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    .line 200
    invoke-static {v4, v8}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v8

    sget-object v11, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    .line 201
    invoke-static {v3, v11}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v11

    invoke-direct {v5, v8, v11}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 202
    .local v5, "lp":Landroid/widget/GridLayout$LayoutParams;
    const v8, 0x800033

    invoke-virtual {v5, v8}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 203
    if-lez v4, :cond_2

    iget v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mVerticalGap:I

    iput v8, v5, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 204
    :cond_2
    if-lez v3, :cond_3

    iget v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mHorizontalGap:I

    invoke-virtual {v5, v8}, Landroid/widget/GridLayout$LayoutParams;->setMarginStart(I)V

    .line 205
    :cond_3
    invoke-virtual {v2, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyTileAndSpan(Ljava/lang/String;)V

    .line 206
    iget-boolean v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mWhiteWallpaper:Z

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeColorForBg(Z)V

    .line 207
    invoke-virtual {v2, p3, v10}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 208
    iget-object v8, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v8}, Lcom/android/launcher3/widget/view/WidgetItemView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 209
    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->requestPreview(Lcom/android/launcher3/widget/view/WidgetPageLayout;)V

    .line 213
    invoke-direct {p0, v6, v2, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->configureNextFocus(ILandroid/view/View;I)I

    move-result v6

    goto :goto_1

    .end local v2    # "itemView":Lcom/android/launcher3/widget/view/WidgetItemView;
    .end local v3    # "ix":I
    .end local v4    # "iy":I
    .end local v5    # "lp":Landroid/widget/GridLayout$LayoutParams;
    :cond_4
    move v8, v10

    .line 194
    goto :goto_2

    .line 215
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    :cond_5
    return-void
.end method

.method public changeColorForBg(Z)V
    .locals 4
    .param p1, "whiteBg"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mWhiteWallpaper:Z

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    .line 168
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 169
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 170
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    .line 171
    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeColorForBg(Z)V

    .line 168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_1
    return-void
.end method

.method public changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 4
    .param p1, "state"    # Lcom/android/launcher3/widget/controller/WidgetState$State;
    .param p2, "anim"    # Z

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    .line 157
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 158
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 159
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    .line 160
    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2, p1, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    .line 157
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_1
    return-void
.end method

.method public enableHardwareLayers(Z)V
    .locals 2
    .param p1, "hasLayer"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lcom/android/launcher3/widget/view/WidgetPageLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 92
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesiredHeight()I
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getContentRowCount()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 250
    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getContentRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mVerticalGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getColumnCount()I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mDesiredWidth:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 245
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getRowCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mHorizontalGap:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getPageItemCount()I
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 79
    .local v3, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getPageItemCount()I

    move-result v2

    .line 80
    .local v2, "count":I
    if-lez v2, :cond_1

    .line 82
    add-int/lit8 v4, v2, -0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 83
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 84
    .local v0, "bottom":I
    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 86
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    :cond_1
    :goto_0
    return v3

    .line 84
    .restart local v0    # "bottom":I
    .restart local v1    # "child":Landroid/view/View;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 7

    .prologue
    .line 113
    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    if-eqz v4, :cond_1

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    .line 115
    .local v0, "childCount":I
    new-array v1, v0, [Landroid/view/ViewGroup;

    .line 116
    .local v1, "childViews":[Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 117
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    aput-object v4, v1, v2

    .line 116
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 120
    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, v1, v4

    .line 121
    .local v3, "view":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    invoke-interface {v6, v3}, Lcom/android/launcher3/widget/view/ViewRecycler;->recycle(Landroid/view/ViewGroup;)V

    .line 120
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 125
    .end local v0    # "childCount":I
    .end local v1    # "childViews":[Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v3    # "view":Landroid/view/ViewGroup;
    :cond_1
    invoke-super {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 127
    :cond_2
    return-void
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeAllViews()V

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->enableHardwareLayers(Z)V

    .line 98
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 104
    .local v0, "view":Landroid/view/ViewGroup;
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeViewAt(I)V

    .line 105
    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    invoke-interface {v1, v0}, Lcom/android/launcher3/widget/view/ViewRecycler;->recycle(Landroid/view/ViewGroup;)V

    .line 109
    .end local v0    # "view":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->removeViewAt(I)V

    goto :goto_0
.end method

.method public setAccessibilityEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 135
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 137
    .local v0, "accessibility":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->setImportantForAccessibility(I)V

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v1

    .line 139
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 140
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, "v":Landroid/view/View;
    instance-of v4, v3, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v3, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 139
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    .end local v0    # "accessibility":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v3    # "v":Landroid/view/View;
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 145
    .restart local v0    # "accessibility":I
    .restart local v1    # "childCount":I
    .restart local v2    # "i":I
    :cond_2
    return-void
.end method

.method public setItemOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mItemKeyListener:Landroid/view/View$OnKeyListener;

    .line 153
    return-void
.end method

.method public setViewRecycler(Lcom/android/launcher3/widget/view/ViewRecycler;)V
    .locals 0
    .param p1, "viewRecycler"    # Lcom/android/launcher3/widget/view/ViewRecycler;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetPageLayout;->mViewRecycler:Lcom/android/launcher3/widget/view/ViewRecycler;

    .line 149
    return-void
.end method

.method public updateCellSpan()V
    .locals 4

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildCount()I

    move-result v0

    .line 178
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetPageLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 180
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    if-eqz v3, :cond_0

    .line 181
    check-cast v2, Lcom/android/launcher3/widget/view/WidgetItemView;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyCellSpan()V

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method
