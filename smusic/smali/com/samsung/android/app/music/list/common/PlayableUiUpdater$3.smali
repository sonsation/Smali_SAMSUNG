.class Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayableUiUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlaybackState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

.field final synthetic val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic val$playbackState:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p3, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->val$playbackState:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->access$000(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->val$playbackState:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlaybackState(I)V

    .line 73
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->access$000(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget v1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$3;->val$playbackState:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlaybackState(I)V

    .line 79
    return-void
.end method
