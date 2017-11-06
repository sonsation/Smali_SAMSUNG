.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$3;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->unlockScreen(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$3;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->finish()V

    .line 229
    return-void
.end method
