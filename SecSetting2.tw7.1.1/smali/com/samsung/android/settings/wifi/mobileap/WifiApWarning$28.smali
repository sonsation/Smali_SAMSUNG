.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 994
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 995
    .local v3, "wifiState":I
    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 996
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 998
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 999
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1001
    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1006
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1007
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1008
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "SAMSUNG_HOTSPOT"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    .line 1009
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1010
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1011
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1013
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 993
    return-void

    .line 1002
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :catch_0
    move-exception v1

    .line 1003
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
