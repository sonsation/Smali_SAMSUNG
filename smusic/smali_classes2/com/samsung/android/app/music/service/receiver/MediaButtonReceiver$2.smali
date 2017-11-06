.class Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;
.super Ljava/lang/Object;
.source "MediaButtonReceiver.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->handleForwardRewind(Landroid/content/Context;Landroid/view/KeyEvent;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->this$0:Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForward()V
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.core.action.PLAYBACK_REWIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.music"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 233
    return-void
.end method
