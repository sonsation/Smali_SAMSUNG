.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$7;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->launchPlayer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$7;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 398
    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$7;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 399
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 400
    const/4 v2, 0x0

    const/16 v3, 0x69

    .line 401
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/common/ActivityLauncher;->getLaunchMusicIntent(ZI)Landroid/content/Intent;

    move-result-object v1

    .line 402
    .local v1, "i":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 403
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 404
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 406
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    return-void
.end method
