.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 166
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 169
    const-string/jumbo v2, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v3, "BACK key pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    :cond_0
    return v0

    .line 172
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 173
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 172
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 174
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 175
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 174
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 176
    .local v0, "mAggressiveEnabled":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 177
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v3, "POOR_DIALOG_AGG"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 184
    .end local v0    # "mAggressiveEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    .line 185
    return v1

    .line 179
    .restart local v0    # "mAggressiveEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v3, "POOR_DIALOG_ON"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .end local v0    # "mAggressiveEnabled":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$3;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    const-string/jumbo v3, "POOR_DIALOG_OFF"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0
.end method
