.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$7;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 699
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$7;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$7;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$7;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1500(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ItemAnimator;)V

    .line 703
    return-void
.end method
