.class Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$2;
.super Landroid/content/BroadcastReceiver;
.source "LegacySoundAliveController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$2;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.samsungsound.ACTION_SOUNDALIVE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController$2;->this$0:Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;->access$000(Lcom/samsung/android/app/music/common/legacy/soundalive/LegacySoundAliveController;)V

    .line 87
    :cond_0
    return-void
.end method
