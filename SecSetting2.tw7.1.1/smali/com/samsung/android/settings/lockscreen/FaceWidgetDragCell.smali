.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;
.super Landroid/widget/RelativeLayout;
.source "FaceWidgetDragCell.java"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mSwitch:Landroid/widget/Switch;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSwitch()Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 41
    const v0, 0x7f1100e6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mTitle:Landroid/widget/TextView;

    .line 42
    const v0, 0x7f1103ad

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 39
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->invalidate()V

    .line 59
    return-void
.end method

.method public setDragHandlerPadding(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 87
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0557

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 88
    .local v1, "endPadding":I
    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0555

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 90
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0552

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 89
    add-int v1, v2, v3

    .line 93
    :cond_0
    invoke-virtual {p0, v5, v5, v1, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setPaddingRelative(IIII)V

    .line 85
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mKey:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setLabelAndDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "labelText"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->invalidate()V

    .line 80
    return-void
.end method

.method public setShowCheckbox(Z)V
    .locals 2
    .param p1, "showCheckbox"    # Z

    .prologue
    .line 50
    if-eqz p1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 55
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->invalidate()V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->requestLayout()V

    .line 49
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    goto :goto_0
.end method
