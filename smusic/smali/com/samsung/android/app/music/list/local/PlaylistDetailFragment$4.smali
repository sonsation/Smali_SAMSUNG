.class Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PlaylistDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    .prologue
    .line 738
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 749
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$900(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$1000(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->getFilterOption()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$1100(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V

    .line 751
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->notifyDataSetChanged()V

    .line 753
    :cond_0
    return-void

    .line 750
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$700(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->access$800(Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;Z)V

    .line 743
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$PlaylistTrackAdapter;->notifyDataSetChanged()V

    .line 745
    :cond_0
    return-void
.end method
