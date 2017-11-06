.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;->val$context:Landroid/content/Context;

    const-string v1, "GCLS"

    const-string v2, "Music App Entry"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .line 225
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "6172"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/player/logger/PlayerSALoggingUtils;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$1;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$000(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/view/View;)V

    .line 227
    return-void
.end method
