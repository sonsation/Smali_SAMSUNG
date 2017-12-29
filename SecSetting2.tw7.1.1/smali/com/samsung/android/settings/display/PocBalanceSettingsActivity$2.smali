.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "PocBalanceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    .prologue
    .line 469
    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$2;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-set0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;I)I

    .line 472
    :cond_0
    return-void
.end method
