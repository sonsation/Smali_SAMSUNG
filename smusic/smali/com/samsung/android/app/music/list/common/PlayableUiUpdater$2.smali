.class Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlayableUiUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->updatePlayingAudioId(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

.field final synthetic val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic val$itemId:J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput-wide p3, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->val$itemId:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->access$000(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->val$itemId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlayingAudioId(J)V

    .line 58
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->val$checkBoxAnimator:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->removeCheckBoxAnimationListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->this$0:Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;->access$000(Lcom/samsung/android/app/music/list/common/PlayableUiUpdater;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;

    iget-wide v2, p0, Lcom/samsung/android/app/music/list/common/PlayableUiUpdater$2;->val$itemId:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->updatePlayingAudioId(J)V

    .line 52
    return-void
.end method
