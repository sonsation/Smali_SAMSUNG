.class public final Lcom/android/launcher3/common/drag/DragViewHelper;
.super Ljava/lang/Object;
.source "DragViewHelper.java"


# static fields
.field public static final DRAG_BITMAP_PADDING:I = 0x6

.field private static final sCanvas:Landroid/graphics/Canvas;

.field private static final sDragOutlinePaint:Landroid/graphics/Paint;

.field private static final sTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/drag/DragViewHelper;->sDragOutlinePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDragBitmap(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "expectedPadding"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .param p2, "showBadge"    # Z

    .prologue
    .line 115
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 116
    .local v3, "padding":I
    instance-of v4, p0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_1

    .line 117
    if-eqz p2, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 118
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_0
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 133
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-static {p0, v4, v3, v5, p2}, Lcom/android/launcher3/common/drag/DragViewHelper;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZZ)V

    .line 134
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    return-object v0

    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    move-object v4, p0

    .line 121
    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 122
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Lcom/android/launcher3/common/drag/DragViewHelper;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 123
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v3

    .line 124
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 125
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int v4, v3, v4

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    .line 129
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v2    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v3

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 128
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "b":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static createDragOutline(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    invoke-static {p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;

    move-result-object v2

    .local v2, "outlineHelper":Lcom/android/launcher3/common/drag/DragOutlineHelper;
    move-object v3, p0

    .line 80
    check-cast v3, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v1

    .line 81
    .local v1, "outlineColor":I
    invoke-static {p1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 83
    sget-object v3, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v3, v1}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->createIconDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 84
    sget-object v3, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 85
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method public static createDragOutline(Landroid/content/Context;Landroid/view/View;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "outlineColor"    # I

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 48
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;

    move-result-object v3

    .line 50
    .local v3, "outlineHelper":Lcom/android/launcher3/common/drag/DragOutlineHelper;
    const/4 v4, 0x0

    .local v4, "width":I
    const/4 v2, 0x0

    .line 51
    .local v2, "height":I
    instance-of v5, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v5, :cond_3

    move-object v5, p1

    .line 52
    check-cast v5, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v5, p1

    .line 53
    check-cast v5, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v2

    move v4, v2

    .line 58
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 59
    add-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v2, 0x6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 62
    :cond_1
    if-nez v0, :cond_2

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 65
    add-int/lit8 v5, v4, 0x6

    add-int/lit8 v6, v2, 0x6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    :cond_2
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 70
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {p1, v5, v6, v7, v8}, Lcom/android/launcher3/common/drag/DragViewHelper;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZZ)V

    .line 71
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0, v5, p2}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->createIconDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 72
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 74
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5

    .line 54
    :cond_3
    instance-of v5, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v5, :cond_0

    move-object v5, p1

    .line 55
    check-cast v5, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    move v4, v2

    goto :goto_0
.end method

.method public static createWidgetBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "layout"    # Landroid/view/View;
    .param p1, "unScaledSize"    # [I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    .line 141
    .local v2, "visibility":I
    invoke-virtual {p0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 143
    aget v4, p1, v7

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 144
    .local v3, "width":I
    aget v4, p1, v8

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 145
    .local v1, "height":I
    aget v4, p1, v7

    aget v5, p1, v8

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    .local v0, "b":Landroid/graphics/Bitmap;
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v4, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    invoke-virtual {p0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 149
    aget v4, p1, v7

    aget v5, p1, v8

    invoke-virtual {p0, v7, v7, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 150
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 151
    sget-object v4, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-object v0
.end method

.method public static createWidgetDragOutline(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v11, 0x40000000    # 2.0f

    .line 89
    invoke-static {p0}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/common/drag/DragOutlineHelper;

    move-result-object v2

    .local v2, "outlineHelper":Lcom/android/launcher3/common/drag/DragOutlineHelper;
    move-object v5, p0

    .line 91
    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v1

    .line 92
    .local v1, "outlineColor":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 93
    .local v0, "b":Landroid/graphics/Bitmap;
    const/4 v4, 0x2

    .line 94
    .local v4, "rectRadius":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    float-to-int v5, v5

    mul-int/lit8 v3, v5, 0x4

    .line 95
    .local v3, "rectPadding":I
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 97
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 98
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v3

    int-to-float v8, v3

    sub-int v9, p1, v3

    int-to-float v9, v9

    sub-int v10, p2, v3

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Lcom/android/launcher3/common/drag/DragViewHelper;->sDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v11, v11, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v0, v5, v1}, Lcom/android/launcher3/common/drag/DragOutlineHelper;->createWidgetDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 101
    sget-object v5, Lcom/android/launcher3/common/drag/DragViewHelper;->sCanvas:Landroid/graphics/Canvas;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method private static drawDragView(Landroid/view/View;Landroid/graphics/Canvas;IZZ)V
    .locals 13
    .param p0, "v"    # Landroid/view/View;
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I
    .param p3, "isOutline"    # Z
    .param p4, "showBadge"    # Z

    .prologue
    .line 158
    sget-object v2, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    .line 159
    .local v2, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 162
    instance-of v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_0

    if-eqz p3, :cond_0

    move-object v9, p0

    .line 163
    check-cast v9, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconVew()Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 164
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-static {v4}, Lcom/android/launcher3/common/drag/DragViewHelper;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 165
    .local v1, "bounds":Landroid/graphics/Rect;
    int-to-float v9, p2

    const/high16 v10, 0x40400000    # 3.0f

    div-float/2addr v9, v10

    int-to-float v10, p2

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    iget v11, v1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 166
    check-cast p0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p0    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconSize()I

    move-result v8

    .line 167
    .local v8, "iconSize":I
    sget-object v9, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    const/4 v9, 0x0

    const/4 v10, 0x0

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v11, v8

    div-int/lit8 v12, p2, 0x2

    add-int/2addr v12, v8

    invoke-virtual {v4, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 169
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 170
    sget-object v9, Lcom/android/launcher3/common/drag/DragViewHelper;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 209
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v8    # "iconSize":I
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 210
    return-void

    .line 171
    .restart local p0    # "v":Landroid/view/View;
    :cond_0
    instance-of v9, p0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v9, :cond_4

    .line 172
    if-eqz p4, :cond_1

    move-object v9, p0

    .line 173
    check-cast v9, Lcom/android/launcher3/common/view/IconView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/android/launcher3/common/view/IconView;->setTitleViewVisibility(I)V

    .line 174
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 176
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 178
    check-cast p0, Lcom/android/launcher3/common/view/IconView;

    .end local p0    # "v":Landroid/view/View;
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/view/IconView;->setTitleViewVisibility(I)V

    goto :goto_0

    .restart local p0    # "v":Landroid/view/View;
    :cond_1
    move-object v9, p0

    .line 180
    check-cast v9, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/view/IconView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 181
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    invoke-static {v7}, Lcom/android/launcher3/common/drag/DragViewHelper;->getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    .line 182
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v11

    add-int/2addr v11, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    add-int/2addr v12, p2

    invoke-virtual {v2, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 183
    div-int/lit8 v9, p2, 0x2

    iget v10, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-int/lit8 v10, p2, 0x2

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 184
    instance-of v9, p0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v9, :cond_3

    .line 185
    check-cast p0, Lcom/android/launcher3/folder/view/FolderIconView;

    .end local p0    # "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/view/FolderIconView;->getIconBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 186
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    .line 188
    .local v3, "copyBackground":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 191
    :goto_1
    if-nez v3, :cond_2

    .line 192
    move-object v3, v0

    .line 194
    :cond_2
    const/4 v9, 0x2

    new-array v6, v9, [Landroid/graphics/drawable/Drawable;

    const/4 v9, 0x0

    aput-object v3, v6, v9

    const/4 v9, 0x1

    aput-object v7, v6, v9

    .line 197
    .local v6, "folderDrawable":[Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 198
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 199
    .local v5, "folder":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v5, p1}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 201
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "copyBackground":Landroid/graphics/drawable/Drawable;
    .end local v5    # "folder":Landroid/graphics/drawable/LayerDrawable;
    .end local v6    # "folderDrawable":[Landroid/graphics/drawable/Drawable;
    .restart local p0    # "v":Landroid/view/View;
    :cond_3
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 205
    .end local v1    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v10, p2, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v11, p2, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 206
    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 207
    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 189
    .end local p0    # "v":Landroid/view/View;
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "bounds":Landroid/graphics/Rect;
    .restart local v3    # "copyBackground":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private static getDrawableBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 214
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_1

    .line 216
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 220
    :goto_0
    return-object v0

    .line 218
    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method
