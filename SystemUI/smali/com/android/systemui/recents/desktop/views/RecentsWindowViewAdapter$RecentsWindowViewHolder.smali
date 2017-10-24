.class public Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "RecentsWindowViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/recents/model/Task$TaskCallbacks;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RecentsWindowViewHolder"
.end annotation


# instance fields
.field contentView:Landroid/view/View;

.field dismissView:Landroid/widget/ImageView;

.field focusView:Landroid/view/View;

.field iconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field lockView:Landroid/widget/ImageView;

.field startedAnimation:Z

.field taskView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    .line 106
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->startedAnimation:Z

    .line 105
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v1

    .line 113
    .local v1, "position":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 114
    return-void

    .line 117
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->dismissView:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_2

    .line 118
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v3, v3, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget v3, v3, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ne v1, v3, :cond_1

    .line 119
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-static {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_3

    .line 126
    return-void

    .line 128
    :cond_3
    sget-boolean v3, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    if-ne p1, v3, :cond_6

    .line 129
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-static {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 130
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v3, :cond_4

    .line 131
    iget-object v3, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "lockComponentName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v3, v3, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 133
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setLockTaskBtn(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v3, v3, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v4, v4, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->removePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    .end local v0    # "lockComponentName":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 136
    .restart local v0    # "lockComponentName":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setLockTaskBtn(Z)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v3, v3, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/model/LockTaskPreference;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/LockTaskPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v4, v4, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/recents/model/LockTaskPreference;->savePreference(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v0    # "lockComponentName":Ljava/lang/String;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v3, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-static {v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->startTask(Lcom/android/systemui/recents/model/Task;)V

    .line 111
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 237
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 206
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mHoveredForegroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/Task;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v0, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskDataLoaded(Landroid/app/ActivityManager$TaskThumbnailInfo;)V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/systemui/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->setLockTaskBtn(Z)V

    .line 153
    :cond_1
    return-void
.end method

.method public onTaskDataUnloaded()V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->getAdapterPosition()I

    move-result v0

    .line 171
    .local v0, "position":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 172
    return-void

    .line 174
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    invoke-static {v2}, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->-get0(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 175
    .local v1, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v1, p0}, Lcom/android/systemui/recents/model/Task;->removeCallback(Lcom/android/systemui/recents/model/Task$TaskCallbacks;)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->thumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->unbindFromTask()V

    .line 169
    return-void
.end method

.method public onTaskStackIdChanged()V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public setFocus(Z)V
    .locals 2
    .param p1, "focused"    # Z

    .prologue
    .line 222
    if-eqz p1, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const v1, 0x7f020454

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 226
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->focusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->taskView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAccessibilityFocus()V

    goto :goto_0
.end method

.method setLockTaskBtn(Z)V
    .locals 3
    .param p1, "lock"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 187
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 196
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 198
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$RecentsWindowViewHolder;->lockView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0
.end method
