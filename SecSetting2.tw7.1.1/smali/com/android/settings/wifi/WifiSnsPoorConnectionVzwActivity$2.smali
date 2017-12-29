.class Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionVzwActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->showSnsPoorConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

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

    .line 193
    const-string/jumbo v2, "WifiSnsPoorConnectionVzwActivity"

    const-string/jumbo v3, "BACK key pressed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    :cond_0
    return v0

    .line 196
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 197
    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    .line 196
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_4

    .line 198
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    invoke-static {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->-get0(Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 199
    const-string/jumbo v3, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 198
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    move v0, v1

    .line 200
    .local v0, "mAggressiveEnabled":Z
    :cond_2
    if-eqz v0, :cond_3

    .line 201
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    const-string/jumbo v3, "POOR_DIALOG_AGG"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->sendGSIMdata(Ljava/lang/String;)V

    .line 208
    .end local v0    # "mAggressiveEnabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->finish()V

    .line 209
    return v1

    .line 203
    .restart local v0    # "mAggressiveEnabled":Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    const-string/jumbo v3, "POOR_DIALOG_ON"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0

    .line 206
    .end local v0    # "mAggressiveEnabled":Z
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;

    const-string/jumbo v3, "POOR_DIALOG_OFF"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSnsPoorConnectionVzwActivity;->sendGSIMdata(Ljava/lang/String;)V

    goto :goto_0
.end method
