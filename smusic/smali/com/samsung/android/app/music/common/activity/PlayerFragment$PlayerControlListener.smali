.class Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;
.source "PlayerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerControlListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/common/activity/PlayerFragment$1;

    .prologue
    .line 1282
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;-><init>(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)V

    return-void
.end method


# virtual methods
.method public onPlayerNext()V
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$400(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->moveToNext()V

    .line 1287
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1500(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->next()V

    .line 1288
    return-void
.end method

.method public onPlayerPrev()V
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$400(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/fullplayer/FullPlayerAlbumArt;->moveToPrev()V

    .line 1293
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerFragment$PlayerControlListener;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PlayerFragment;->access$1500(Lcom/samsung/android/app/music/common/activity/PlayerFragment;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;->prev()V

    .line 1294
    return-void
.end method
