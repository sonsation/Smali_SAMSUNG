.class Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;
.super Ljava/lang/Object;
.source "RecentsWindowViewAdapter.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->requestUpdateRecentsLayout(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field final synthetic val$removePosition:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;
    .param p2, "val$removePosition"    # I

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iput p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->val$removePosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 393
    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onTransitionCancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    .line 392
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 2
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 388
    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onTransitionEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mIsSceneTransitionRequested:Z

    .line 387
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 384
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 381
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3
    .param p1, "transition"    # Landroid/transition/Transition;

    .prologue
    .line 371
    const-string/jumbo v0, "RecentsWindowViewAdapter"

    const-string/jumbo v1, "onTransitionStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->val$removePosition:I

    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    iget v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->mFocusedIndex:I

    if-ge v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$1;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v0, v0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mView:Lcom/android/systemui/recents/desktop/views/RecentsWindowView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/desktop/views/RecentsWindowView;->adjustFocusedIndex()V

    .line 370
    :goto_0
    return-void

    .line 377
    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;

    sget-object v2, Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;->NONE:Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/focus/FocusMoveEvent;-><init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowView$FocusDirection;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0
.end method
