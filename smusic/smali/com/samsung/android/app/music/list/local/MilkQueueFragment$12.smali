.class Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MilkQueueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/MilkQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x1

    .line 1094
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1800(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$700(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1900(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V

    .line 1096
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 1098
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1600(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->access$1700(Lcom/samsung/android/app/music/list/local/MilkQueueFragment;Z)V

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/MilkQueueFragment$12;->this$0:Lcom/samsung/android/app/music/list/local/MilkQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/MilkQueueFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->notifyDataSetChanged()V

    .line 1090
    :cond_0
    return-void
.end method
