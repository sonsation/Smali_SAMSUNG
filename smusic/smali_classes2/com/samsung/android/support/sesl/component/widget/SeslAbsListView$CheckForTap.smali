.class final Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

.field x:F

.field y:F


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0

    .prologue
    .line 4205
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    .prologue
    .line 4205
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4211
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    if-nez v5, :cond_3

    .line 4212
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput v8, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    .line 4213
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v7, v7, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mFirstPosition:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4216
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    if-ltz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ListAdapter;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4217
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput v9, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mLayoutMode:I

    .line 4219
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-boolean v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mDataChanged:Z

    if-nez v5, :cond_6

    .line 4220
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)[F

    move-result-object v4

    .line 4221
    .local v4, "point":[F
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->x:F

    aput v5, v4, v9

    .line 4222
    iget v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->y:F

    aput v5, v4, v8

    .line 4224
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v5, v4, v0}, Lcom/samsung/android/support/sesl/core/view/SeslViewGroupReflector;->transformPointToViewLocal(Landroid/view/ViewGroup;[FLandroid/view/View;)V

    .line 4225
    aget v5, v4, v9

    aget v6, v4, v8

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 4226
    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 4227
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->setPressed(Z)V

    .line 4228
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->layoutChildren()V

    .line 4229
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget v6, v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mMotionPosition:I

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->positionSelector(ILandroid/view/View;)V

    .line 4230
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->refreshDrawableState()V

    .line 4232
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    .line 4233
    .local v3, "longPressTimeout":I
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->isLongClickable()Z

    move-result v2

    .line 4235
    .local v2, "longClickable":Z
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    .line 4236
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4237
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v5, v1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v5, :cond_0

    .line 4238
    if-eqz v2, :cond_4

    .line 4239
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 4244
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v5, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->x:F

    iget v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->y:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4247
    :cond_1
    if-eqz v2, :cond_5

    .line 4248
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    move-result-object v5

    if-nez v5, :cond_2

    .line 4249
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    new-instance v6, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    iget-object v7, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V

    invoke-static {v5, v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1502(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    .line 4251
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 4252
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iget-object v6, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v6}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$1500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForLongPress;

    move-result-object v6

    int-to-long v8, v3

    invoke-virtual {v5, v6, v8, v9}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4261
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_3
    :goto_1
    return-void

    .line 4241
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "longClickable":Z
    .restart local v3    # "longPressTimeout":I
    .restart local v4    # "point":[F
    :cond_4
    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    .line 4254
    :cond_5
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput v10, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    goto :goto_1

    .line 4257
    .end local v2    # "longClickable":Z
    .end local v3    # "longPressTimeout":I
    .end local v4    # "point":[F
    :cond_6
    iget-object v5, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$CheckForTap;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    iput v10, v5, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->mTouchMode:I

    goto :goto_1
.end method
