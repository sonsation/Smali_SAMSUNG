.class Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 52
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 54
    const-string/jumbo v3, "status"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 56
    .local v2, "status":I
    const-string v3, "level"

    const/4 v4, -0x1

    .line 57
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, "batteryLevel":I
    invoke-static {}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSystemReceiver - batteryLevel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " batteryStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    if-le v1, v6, :cond_2

    .line 63
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->access$100(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 64
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->access$100(Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;)Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 66
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup$1;->this$0:Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/dialog/LowBatteryPopup;->finish()V

    .line 69
    .end local v1    # "batteryLevel":I
    .end local v2    # "status":I
    :cond_2
    return-void
.end method
