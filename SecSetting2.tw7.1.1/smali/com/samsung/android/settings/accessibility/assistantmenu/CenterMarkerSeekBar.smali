.class public Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;
.super Landroid/widget/SeekBar;
.source "CenterMarkerSeekBar.java"


# instance fields
.field private mMarkerPaint:Landroid/graphics/Paint;

.field private mRectMarker:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private colorToColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "color"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 96
    new-array v0, v2, [[I

    new-array v1, v3, [I

    aput-object v1, v0, v3

    .line 97
    .local v0, "EMPTY":[[I
    new-instance v1, Landroid/content/res/ColorStateList;

    new-array v2, v2, [I

    aput p1, v2, v3

    invoke-direct {v1, v0, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->colorToColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    .line 55
    const v3, 0x7f0a00f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 56
    .local v1, "marker_width":I
    const v3, 0x7f0a00f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 57
    .local v0, "marker_height":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v4, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    .line 58
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    const v4, 0x7f0d007a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    monitor-enter p0

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 78
    .local v3, "translate_dx":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 79
    .local v2, "mPaddingTotal":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    sub-int/2addr v4, v2

    int-to-float v4, v4

    const/high16 v5, 0x40e00000    # 7.0f

    div-float v1, v4, v5

    .line 81
    .local v1, "interval":F
    div-int/lit8 v4, v2, 0x2

    int-to-float v4, v4

    int-to-float v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    const/4 v0, 0x0

    .line 76
    .local v0, "i":I
    :goto_0
    const/4 v4, 0x7

    .line 82
    if-ge v0, v4, :cond_0

    .line 83
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 84
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mRectMarker:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 89
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 73
    return-void

    .end local v0    # "i":I
    .end local v1    # "interval":F
    .end local v2    # "mPaddingTotal":I
    .end local v3    # "translate_dx":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setEnableColor(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 64
    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->mMarkerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/assistantmenu/CenterMarkerSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method
