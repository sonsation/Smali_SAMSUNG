.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$1;
.super Ljava/lang/Object;
.source "LockScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;
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
    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;->access$002(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenActivity;Z)Z

    .line 62
    return-void
.end method
