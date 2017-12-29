.class Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;
.super Landroid/os/CountDownTimer;
.source "WifiSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;
    .param p2, "$anonymous0"    # J
    .param p4, "$anonymous1"    # J

    .prologue
    .line 2184
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 2195
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mBixbyWaitWifiOnTimer onfinished "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2196
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap10(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 2194
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 2186
    const-string/jumbo v0, "WifiSettingsBase"

    const-string/jumbo v1, "mBixbyWaitWifiOnTimer ontick "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2188
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->onP2pMenuPressed()V

    .line 2189
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap10(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    .line 2185
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap7(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap2(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2191
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7$1;->this$1:Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiSettingsBase$7;->this$0:Lcom/samsung/android/settings/wifi/WifiSettingsBase;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->-wrap10(Lcom/samsung/android/settings/wifi/WifiSettingsBase;)V

    goto :goto_0
.end method
