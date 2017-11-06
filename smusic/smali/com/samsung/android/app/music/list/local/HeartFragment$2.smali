.class Lcom/samsung/android/app/music/list/local/HeartFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HeartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/HeartFragment;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$400(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$500(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V

    .line 270
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->notifyDataSetChanged()V

    .line 272
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$600(Lcom/samsung/android/app/music/list/local/HeartFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->access$700(Lcom/samsung/android/app/music/list/local/HeartFragment;Z)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartAdapter;->notifyDataSetChanged()V

    .line 280
    :cond_0
    return-void
.end method
