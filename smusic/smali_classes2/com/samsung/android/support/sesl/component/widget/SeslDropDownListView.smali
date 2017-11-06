.class Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
.super Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;
.source "SeslDropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;
    }
.end annotation


# instance fields
.field private mClickAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "hijackFocus"    # Z

    .prologue
    .line 93
    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mHijackFocus:Z

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setCacheColorHint(I)V

    .line 96
    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;)Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;
    .param p1, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    return-object p1
.end method

.method private clearPressedItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 244
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mDrawsInPressedState:Z

    .line 245
    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setPressed(Z)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->drawableStateChanged()V

    .line 249
    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 250
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mClickAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mClickAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;->cancel()V

    .line 256
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mClickAnimation:Lcom/samsung/android/support/sesl/core/view/SeslViewPropertyAnimatorCompat;

    .line 258
    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 228
    invoke-virtual {p0, p2}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 229
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 230
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 261
    iput-boolean v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mDrawsInPressedState:Z

    .line 264
    invoke-virtual {p0, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->drawableHotspotChanged(FF)V

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 266
    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setPressed(Z)V

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->layoutChildren()V

    .line 274
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mMotionPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 275
    iget v3, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 280
    .end local v2    # "motionView":Landroid/view/View;
    :cond_1
    iput p2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mMotionPosition:I

    .line 283
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 284
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 285
    .local v1, "childY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 291
    :cond_2
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 296
    invoke-virtual {p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setSelectorEnabled(Z)V

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->refreshDrawableState()V

    .line 301
    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->hasFocus()Z

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

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->hasWindowFocus()Z

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

.method public isFocused()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->isFocused()Z

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

.method public isInTouchMode()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 168
    const/4 v4, 0x1

    .line 169
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 171
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 172
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz v3, :cond_2

    .line 206
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->clearPressedItem()V

    .line 210
    :cond_2
    if-eqz v4, :cond_7

    .line 211
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    if-nez v8, :cond_3

    .line 212
    new-instance v8, Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    invoke-direct {v8, p0}, Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    .line 214
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    invoke-virtual {v8, v10}, Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;->setEnabled(Z)Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    .line 215
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    invoke-virtual {v8, p0, p1}, Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 220
    :cond_4
    :goto_1
    return v4

    .line 174
    :pswitch_0
    const/4 v4, 0x0

    .line 175
    goto :goto_0

    .line 177
    :pswitch_1
    const/4 v4, 0x0

    .line 180
    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 181
    .local v1, "activeIndex":I
    if-gez v1, :cond_5

    .line 182
    const/4 v4, 0x0

    .line 183
    goto :goto_0

    .line 186
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 187
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 188
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->pointToPosition(II)I

    move-result v5

    .line 189
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_6

    .line 190
    const/4 v3, 0x1

    .line 191
    goto :goto_0

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 195
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 196
    const/4 v4, 0x1

    .line 198
    if-ne v0, v10, :cond_0

    .line 199
    invoke-direct {p0, v2, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_0

    .line 216
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    if-eqz v8, :cond_4

    .line 217
    iget-object v8, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mScrollHelper:Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/sesl/core/widget/SeslListViewAutoScrollHelper;->setEnabled(Z)Lcom/samsung/android/support/sesl/core/widget/SeslAutoScrollHelper;

    goto :goto_1

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, -0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 117
    .local v0, "action":I
    const/16 v5, 0xa

    if-ne v0, v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    if-nez v5, :cond_0

    .line 120
    new-instance v5, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$1;)V

    iput-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    .line 121
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->post()V

    .line 125
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 127
    .local v1, "handled":Z
    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/4 v5, 0x7

    if-ne v0, v5, :cond_5

    .line 129
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->pointToPosition(II)I

    move-result v3

    .line 130
    .local v3, "position":I
    invoke-static {p0}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->getField_mSelectedPosition(Landroid/widget/AdapterView;)I

    move-result v4

    .line 131
    .local v4, "selectedPosition":I
    if-eq v3, v7, :cond_4

    if-eq v3, v4, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 133
    .local v2, "hoveredItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->requestFocus()Z

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isHovered()Z

    move-result v5

    if-nez v5, :cond_2

    .line 139
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->setHovered(Z)V

    .line 142
    :cond_2
    invoke-static {p0, v3, v2}, Lcom/samsung/android/support/sesl/core/widget/SeslAbsListViewReflector;->positionSelector(Landroid/widget/AbsListView;ILandroid/view/View;)V

    .line 143
    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->setSelectedPositionInt(Landroid/widget/AdapterView;I)V

    .line 144
    invoke-static {p0, v3}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->setNextSelectedPositionInt(Landroid/widget/AdapterView;I)V

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->drawableStateChanged()V

    .line 158
    .end local v2    # "hoveredItem":Landroid/view/View;
    .end local v3    # "position":I
    .end local v4    # "selectedPosition":I
    :cond_4
    :goto_0
    return v1

    .line 152
    :cond_5
    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->shouldShowSelectorCompat()Z

    move-result v5

    if-nez v5, :cond_4

    .line 153
    invoke-static {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->setSelectedPositionInt(Landroid/widget/AdapterView;I)V

    .line 154
    invoke-static {p0, v7}, Lcom/samsung/android/support/sesl/core/widget/SeslAdapterViewReflector;->setNextSelectedPositionInt(Landroid/widget/AdapterView;I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mResolveHoverRunnable:Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView$ResolveHoverRunnable;->cancel()V

    .line 110
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method setListSelectionHidden(Z)V
    .locals 0
    .param p1, "hideListSelection"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mListSelectionHidden:Z

    .line 241
    return-void
.end method

.method protected shouldShowSelectorCompat()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->isHovered()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->shouldShowSelectorCompat()Z

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

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslDropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/support/sesl/component/widget/SeslListViewCompat;->touchModeDrawsInPressedStateCompat()Z

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
