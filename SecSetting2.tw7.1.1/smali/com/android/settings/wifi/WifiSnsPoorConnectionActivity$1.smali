.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 98
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 99
    .local v1, "msgBigdata":Landroid/os/Message;
    const/16 v3, 0x131

    iput v3, v1, Landroid/os/Message;->what:I

    .line 100
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 101
    if-ne p2, v0, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 103
    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 102
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 104
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 111
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get1(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 112
    if-nez p1, :cond_2

    .line 113
    return-void

    .line 106
    :cond_0
    iput v2, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 109
    :cond_1
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->arg2:I

    goto :goto_0

    .line 115
    :cond_2
    if-ne p2, v0, :cond_3

    .line 132
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 133
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 132
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    const-string/jumbo v3, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v4, "SNS On pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    if-ne p2, v0, :cond_6

    .line 142
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 143
    const-string/jumbo v4, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 142
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_4

    .line 144
    .local v0, "mAggressiveEnabled":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 145
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v3, "POOR_DIALOG_AGG"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 152
    .end local v0    # "mAggressiveEnabled":Z
    :goto_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    .line 153
    return-void

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 137
    const-string/jumbo v4, "wifi_watchdog_poor_network_test_enabled"

    .line 136
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    const-string/jumbo v3, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v4, "SNS Off pressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v0, v2

    .line 142
    goto :goto_2

    .line 147
    .restart local v0    # "mAggressiveEnabled":Z
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v3, "POOR_DIALOG_ON"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_3

    .line 150
    .end local v0    # "mAggressiveEnabled":Z
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v3, "POOR_DIALOG_OFF"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_3
.end method
