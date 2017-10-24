.class public Lcom/android/systemui/qs/QSIconView;
.super Landroid/view/ViewGroup;
.source "QSIconView.java"


# instance fields
.field private mAnimationEnabled:Z

.field protected final mIcon:Landroid/view/View;

.field protected final mIconSizePx:I

.field mIsTopRow:Z

.field protected final mTilePaddingBelowIconPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSIconView;->mIsTopRow:Z

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    .line 47
    const v1, 0x7f0d0231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->createIcon()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    .line 50
    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSIconView;->addView(Landroid/view/View;)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSIconView;->setFocusable(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method protected createIcon()Landroid/view/View;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "icon":Landroid/widget/ImageView;
    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    .line 127
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 128
    return-object v0
.end method

.method public disableAnimation()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    .line 54
    return-void
.end method

.method protected final exactly(I)I
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 132
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method protected getIconMeasureMode()I
    .locals 1

    .prologue
    .line 121
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    return-object v0
.end method

.method public isTopRow()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSIconView;->mIsTopRow:Z

    return v0
.end method

.method protected final layout(Landroid/view/View;II)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 135
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredWidth()I

    move-result v3

    .line 73
    .local v3, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getMeasuredHeight()I

    move-result v0

    .line 74
    .local v0, "h":I
    const/4 v2, 0x0

    .line 75
    .local v2, "top":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int v4, v3, v4

    div-int/lit8 v1, v4, 0x2

    .line 76
    .local v1, "iconLeft":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0, v4, v1, v2}, Lcom/android/systemui/qs/QSIconView;->layout(Landroid/view/View;II)V

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 65
    .local v1, "w":I
    iget v2, p0, Lcom/android/systemui/qs/QSIconView;->mIconSizePx:I

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSIconView;->exactly(I)I

    move-result v0

    .line 66
    .local v0, "iconSpec":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getIconMeasureMode()I

    move-result v3

    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->measure(II)V

    .line 67
    iget-object v2, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/qs/QSIconView;->mTilePaddingBelowIconPx:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSIconView;->setMeasuredDimension(II)V

    .line 63
    return-void
.end method

.method protected setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 6
    .param p1, "iv"    # Landroid/widget/ImageView;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    const/4 v5, 0x0

    .line 85
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_5

    .line 86
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSIconView;->mAnimationEnabled:Z

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    :goto_0
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile$Icon;->getPadding()I

    move-result v2

    .line 89
    .local v2, "padding":I
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->autoMirrorDrawable:Z

    if-eqz v3, :cond_0

    .line 90
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 94
    :cond_0
    instance-of v3, v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    if-eqz v3, :cond_1

    .line 95
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    :cond_1
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 100
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p2, v1}, Lcom/android/systemui/qs/QSTile$Icon;->setColor(Landroid/content/Context;Lcom/android/systemui/qs/QSTile$State;Landroid/graphics/drawable/Drawable;)Z

    .line 102
    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 103
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    const v4, 0x7f130034

    invoke-virtual {p1, v4, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 104
    invoke-virtual {p1, v5, v2, v5, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 105
    instance-of v3, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    .line 106
    check-cast v0, Landroid/graphics/drawable/Animatable;

    .line 107
    .local v0, "a":Landroid/graphics/drawable/Animatable;
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    .line 108
    invoke-virtual {p1}, Landroid/widget/ImageView;->isShown()Z

    move-result v3

    if-nez v3, :cond_3

    .line 109
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 113
    .end local v0    # "a":Landroid/graphics/drawable/Animatable;
    :cond_3
    iget-boolean v3, p2, Lcom/android/systemui/qs/QSTile$State;->disabledByPolicy:Z

    if-eqz v3, :cond_7

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b00b4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 83
    :goto_2
    return-void

    .line 87
    .end local v2    # "padding":I
    :cond_4
    iget-object v3, p2, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    iget-object v4, p0, Lcom/android/systemui/qs/QSIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSTile$Icon;->getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v1, 0x0

    .local v1, "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 88
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "padding":I
    goto :goto_1

    .line 116
    :cond_7
    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_2
.end method

.method public setIcon(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/QSIconView;->mIcon:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/qs/QSTile$State;)V

    .line 79
    return-void
.end method

.method public setRowTop(Z)V
    .locals 0
    .param p1, "isTop"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSIconView;->mIsTopRow:Z

    .line 139
    return-void
.end method
