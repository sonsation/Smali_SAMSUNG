.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationsFinished()V
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$600(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$700(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2$1;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
