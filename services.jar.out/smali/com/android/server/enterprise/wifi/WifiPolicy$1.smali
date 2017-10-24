.class Lcom/android/server/enterprise/wifi/WifiPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/wifi/WifiPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/wifi/WifiPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/wifi/WifiPolicy;

    .prologue
    .line 4049
    iput-object p1, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    .line 4052
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4053
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4054
    const-string/jumbo v7, "wifi_state"

    .line 4055
    const/4 v8, 0x4

    .line 4054
    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4056
    .local v2, "state":I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    .line 4061
    new-instance v4, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1$1;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$1;)V

    .line 4066
    .local v4, "taskToupdateConfiguredNetworks":Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4068
    .local v5, "threadToUpdateConfiguredNetworks":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 4051
    .end local v2    # "state":I
    .end local v4    # "taskToupdateConfiguredNetworks":Ljava/lang/Runnable;
    .end local v5    # "threadToUpdateConfiguredNetworks":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 4070
    :cond_1
    const-string/jumbo v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4072
    const-string/jumbo v7, "networkInfo"

    .line 4071
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 4073
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4074
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    if-ne v7, v8, :cond_0

    .line 4075
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-static {v7}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-wrap1(Lcom/android/server/enterprise/wifi/WifiPolicy;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v7

    .line 4073
    if-eqz v7, :cond_0

    .line 4076
    new-instance v3, Lcom/android/server/enterprise/wifi/WifiPolicy$1$2;

    invoke-direct {v3, p0}, Lcom/android/server/enterprise/wifi/WifiPolicy$1$2;-><init>(Lcom/android/server/enterprise/wifi/WifiPolicy$1;)V

    .line 4081
    .local v3, "taskToWpsBlockedNetworks":Ljava/lang/Runnable;
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4082
    .local v6, "threadToUpdateWpsBlockedNetworks":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 4084
    .end local v1    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "taskToWpsBlockedNetworks":Ljava/lang/Runnable;
    .end local v6    # "threadToUpdateWpsBlockedNetworks":Ljava/lang/Thread;
    :cond_2
    const-string/jumbo v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4085
    invoke-static {v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-set0(Z)Z

    goto :goto_0

    .line 4086
    :cond_3
    const-string/jumbo v7, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4087
    iget-object v7, p0, Lcom/android/server/enterprise/wifi/WifiPolicy$1;->this$0:Lcom/android/server/enterprise/wifi/WifiPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/wifi/WifiPolicy;->-wrap3(Lcom/android/server/enterprise/wifi/WifiPolicy;I)V

    goto :goto_0
.end method
