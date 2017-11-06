.class Lcom/samsung/android/app/music/common/activity/PlayerActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    const-string v0, "UiPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEasyModeReceiver - action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PlayerActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/PlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/PlayerActivity;->finish()V

    .line 316
    return-void
.end method
