.class final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/power/PowerNotificationWarnings;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .prologue
    .line 2036
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 2037
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "PNW.batterySettings"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2038
    const-string/jumbo v0, "PNW.startSaver"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2039
    const-string/jumbo v0, "PNW.dismissedWarning"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2042
    const-string/jumbo v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2043
    const-string/jumbo v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2047
    const-string/jumbo v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2050
    const-string/jumbo v0, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2053
    const-string/jumbo v0, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2056
    const-string/jumbo v0, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2057
    const-string/jumbo v0, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2059
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 2060
    const-string/jumbo v4, "android.permission.STATUS_BAR_SERVICE"

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get5(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v5

    move-object v1, p0

    .line 2059
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2035
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2065
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2066
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "PowerUI.Notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    const-string/jumbo v3, "PNW.batterySettings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2068
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2071
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v3

    if-ne v3, v8, :cond_0

    .line 2072
    return-void

    .line 2074
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get6(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2064
    :cond_1
    :goto_0
    return-void

    .line 2077
    :cond_2
    const-string/jumbo v3, "PNW.startSaver"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2078
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap0(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2079
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap7(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_0

    .line 2080
    :cond_3
    const-string/jumbo v3, "PNW.dismissedWarning"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2081
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto :goto_0

    .line 2084
    :cond_4
    const-string/jumbo v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2085
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 2086
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "FTA mode ON"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2087
    :cond_5
    const-string/jumbo v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2088
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set2(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    .line 2089
    const-string/jumbo v3, "PowerUI.Notification"

    const-string/jumbo v4, "FTA mode OFF"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2093
    :cond_6
    const-string/jumbo v3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2094
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v1

    .line 2095
    .local v1, "oldBatteryMode":I
    const-string/jumbo v3, "reason"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2097
    .local v2, "reason":I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 2098
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3, v8}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set1(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    .line 2099
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingRecommendNotice()V

    .line 2104
    :cond_7
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v3

    if-eq v3, v7, :cond_8

    .line 2105
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap2(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    .line 2108
    :cond_8
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get0(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v3

    .line 2107
    if-eqz v3, :cond_1

    .line 2109
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get3(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 2110
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get4(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->showPowerSavingRecommendNotice(I)V

    goto/16 :goto_0

    .line 2100
    :cond_9
    const/4 v3, 0x5

    if-ne v2, v3, :cond_7

    .line 2101
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set1(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto :goto_1

    .line 2115
    .end local v1    # "oldBatteryMode":I
    .end local v2    # "reason":I
    :cond_a
    const-string/jumbo v3, "com.samsung.systemui.power.action.ACTION_BATTERY_CLOSE_SAVER_RECOMMEND"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2116
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissPowerSavingRecommendNotice()V

    goto/16 :goto_0

    .line 2120
    :cond_b
    const-string/jumbo v3, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2121
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto/16 :goto_0

    .line 2125
    :cond_c
    const-string/jumbo v3, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2126
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap5(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    .line 2128
    :cond_d
    const-string/jumbo v3, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2129
    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap6(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0
.end method
