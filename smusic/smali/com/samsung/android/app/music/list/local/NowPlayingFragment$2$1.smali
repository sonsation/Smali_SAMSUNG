.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2$1;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;->onAnimationsFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2$1;->this$1:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2$1;->this$1:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->finishActionMode()V

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2$1;->this$1:Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$2;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$602(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Z)Z

    .line 256
    return-void
.end method
