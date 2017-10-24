.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;
.super Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;
.source "RecentsWindowItemAnimator.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;->mContext:Landroid/content/Context;

    .line 19
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/desktop/views/RecentsWindowItemAnimator;->setRemoveDuration(J)V

    .line 15
    return-void
.end method


# virtual methods
.method public animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 6
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "fromX"    # I
    .param p3, "fromY"    # I
    .param p4, "toX"    # I
    .param p5, "toY"    # I

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    .line 29
    invoke-super/range {v0 .. v5}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateMove(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;

    .prologue
    .line 57
    iget v0, p1, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigX:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigX:I

    .line 58
    iget v0, p1, Lcom/android/systemui/recents/events/activity/UpdateLayoutEvent;->removeViewOrigY:I

    iput v0, p0, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->removeViewOrigY:I

    .line 56
    return-void
.end method

.method public onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->onRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 49
    return-void
.end method

.method public onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/systemui/recents/desktop/views/DefaultItemAnimator;->onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 41
    return-void
.end method
