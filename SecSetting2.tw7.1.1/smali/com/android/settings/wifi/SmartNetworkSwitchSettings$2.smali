.class Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartNetworkSwitchSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SmartNetworkSwitchSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 134
    .local v1, "state":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    .line 130
    .end local v1    # "state":I
    :cond_1
    :goto_0
    return-void

    .line 137
    :cond_2
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 138
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    goto :goto_0

    .line 139
    :cond_3
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 140
    const-string/jumbo v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 139
    if-eqz v2, :cond_1

    .line 141
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/SmartNetworkSwitchSettings$2;->this$0:Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-static {v2}, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;->-wrap0(Lcom/android/settings/wifi/SmartNetworkSwitchSettings;)V

    goto :goto_0
.end method
