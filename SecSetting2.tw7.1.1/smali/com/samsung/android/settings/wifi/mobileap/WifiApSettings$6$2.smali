.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$2;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    .prologue
    .line 1841
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1844
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1845
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-set17(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 1846
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_pmf_checked"

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$2;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get24(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1843
    return-void

    .line 1846
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
