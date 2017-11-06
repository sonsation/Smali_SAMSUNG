.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NowPlayingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1000(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1100(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 386
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$800(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$900(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)V

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$3;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 378
    :cond_0
    return-void
.end method
