.class public Lcom/android/systemui/qs/QSTileBaseView;
.super Landroid/widget/LinearLayout;
.source "QSTileBaseView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileBaseView$H;
    }
.end annotation


# instance fields
.field private mAccessibilityClass:Ljava/lang/String;

.field private mCollapsedView:Z

.field private final mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

.field private mIcon:Lcom/android/systemui/qs/QSIconView;

.field mIsTop:Z

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mTileBackground:Landroid/graphics/drawable/Drawable;

.field private mTileState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSIconView;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/systemui/qs/QSIconView;
    .param p3, "collapsedView"    # Z

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v1, Lcom/android/systemui/qs/QSTileBaseView$H;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSTileBaseView$H;-><init>(Lcom/android/systemui/qs/QSTileBaseView;)V

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

    .line 46
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIsTop:Z

    .line 54
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    .line 55
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->addView(Landroid/view/View;)V

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileBaseView;->newTileBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->setRipple(Landroid/graphics/drawable/RippleDrawable;)V

    .line 61
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->setImportantForAccessibility(I)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSIconView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d021b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 66
    .local v0, "padding":I
    invoke-virtual {p0, v3, v0, v3, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setPadding(IIII)V

    .line 67
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileBaseView;->setClipChildren(Z)V

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSTileBaseView;->setClipToPadding(Z)V

    .line 69
    iput-boolean p3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mCollapsedView:Z

    .line 52
    return-void
.end method

.method private newTileBackground()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v3, 0x1

    new-array v0, v3, [I

    const v3, 0x101045c

    aput v3, v0, v4

    .line 75
    .local v0, "attrs":[I
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 76
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 77
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 78
    return-object v1
.end method

.method private setRipple(Landroid/graphics/drawable/RippleDrawable;)V
    .locals 2
    .param p1, "tileBackground"    # Landroid/graphics/drawable/RippleDrawable;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(II)V

    .line 81
    :cond_0
    return-void
.end method


# virtual methods
.method public getIcon()Lcom/android/systemui/qs/QSIconView;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    return-object v0
.end method

.method protected handleStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 6
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 143
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSIconView;->setIcon(Lcom/android/systemui/qs/QSTile$State;)V

    .line 144
    instance-of v4, p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    if-eqz v4, :cond_0

    move-object v4, p1

    .line 145
    check-cast v4, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v4, v4, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    .line 149
    :cond_0
    const/4 v1, 0x0

    .line 150
    .local v1, "revisedStr":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 152
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .end local v1    # "revisedStr":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f045f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "buttonStr":Ljava/lang/String;
    iget-object v4, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 156
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 158
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v4, :cond_4

    const v4, 0x7f0f02d6

    .line 157
    :goto_0
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "stateString":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 161
    const-string/jumbo v4, "\n"

    const-string/jumbo v5, ","

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 168
    .end local v3    # "stateString":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/qs/QSIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    return-void

    .line 158
    :cond_4
    const v4, 0x7f0f02d7

    goto :goto_0

    .line 166
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/systemui/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "revisedStr":Ljava/lang/String;
    goto :goto_1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "secondary"    # Landroid/view/View$OnClickListener;
    .param p3, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 107
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/qs/QSTileBaseView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 106
    return-void
.end method

.method public init(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 2
    .param p1, "click"    # Landroid/view/View$OnClickListener;
    .param p2, "longClick"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSIconView;->setClickable(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/QSIconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 192
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 194
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-nez v1, :cond_1

    const v1, 0x7f0f0599

    .line 193
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 196
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 188
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    return-void

    .line 194
    :cond_1
    const v1, 0x7f0f059a

    goto :goto_0

    .line 196
    .restart local v0    # "label":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 206
    const-class v1, Landroid/widget/Switch;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mAccessibilityClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 208
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0f0599

    .line 207
    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "label":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mTileState:Z

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 211
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 202
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    return-void

    .line 208
    :cond_1
    const v1, 0x7f0f059a

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredWidth()I

    move-result v1

    .line 114
    .local v1, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getMeasuredHeight()I

    move-result v0

    .line 116
    .local v0, "h":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(II)V

    .line 111
    :cond_0
    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileBaseView;->mHandler:Lcom/android/systemui/qs/QSTileBaseView$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/qs/QSTileBaseView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 138
    return-void
.end method

.method public setRowTop(Z)V
    .locals 1
    .param p1, "isTop"    # Z

    .prologue
    .line 231
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIsTop:Z

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileBaseView;->getIcon()Lcom/android/systemui/qs/QSIconView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSIconView;->setRowTop(Z)V

    .line 230
    return-void
.end method

.method public updateAccessibilityOrder(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "previousView"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSTileBaseView;->setAccessibilityTraversalAfter(I)V

    .line 135
    return-object p0
.end method

.method protected updateRippleSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileBaseView;->mIcon:Lcom/android/systemui/qs/QSIconView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSIconView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eb851ec    # 0.36f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 90
    .local v0, "rad":I
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/qs/QSTileBaseView;->updateRippleSize(III)V

    .line 88
    return-void
.end method

.method protected updateRippleSize(III)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "rad"    # I

    .prologue
    .line 95
    div-int/lit8 v0, p1, 0x2

    .line 96
    .local v0, "cx":I
    div-int/lit8 v1, p2, 0x2

    .line 97
    .local v1, "cy":I
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileBaseView;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    sub-int v3, v0, p3

    sub-int v4, v1, p3

    add-int v5, v0, p3

    add-int v6, v1, p3

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 93
    return-void
.end method
