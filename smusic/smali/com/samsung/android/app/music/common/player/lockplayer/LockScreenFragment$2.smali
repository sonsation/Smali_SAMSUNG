.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;
.super Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;
.source "LockScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->initViews(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindInputListener$OnPlayerControlListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlayerNext()V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;->val$context:Landroid/content/Context;

    const-string v1, "GCLS"

    const-string v2, "Prev Next"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$100(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->next()V

    .line 267
    return-void
.end method

.method public onPlayerPrev()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;->val$context:Landroid/content/Context;

    const-string v1, "GCLS"

    const-string v2, "Prev Next"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$2;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$100(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/IPlayerController;->prev()V

    .line 275
    return-void
.end method
