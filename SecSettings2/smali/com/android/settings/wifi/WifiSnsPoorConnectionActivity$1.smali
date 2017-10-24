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
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 98
    if-nez p1, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    if-ne p2, v0, :cond_1

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 119
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 118
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    const-string/jumbo v2, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v3, "SNS On pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :goto_0
    if-ne p2, v0, :cond_4

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 129
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 128
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 130
    .local v0, "mAggressiveEnabled":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 131
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v2, "POOR_DIALOG_AGG"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 138
    .end local v0    # "mAggressiveEnabled":Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    .line 139
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 122
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    const-string/jumbo v2, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v3, "SNS Off pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v0, v1

    .line 128
    goto :goto_1

    .line 133
    .restart local v0    # "mAggressiveEnabled":Z
    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v2, "POOR_DIALOG_ON"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2

    .line 136
    .end local v0    # "mAggressiveEnabled":Z
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$1;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v2, "POOR_DIALOG_OFF"

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_2
.end method
