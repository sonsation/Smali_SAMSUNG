.class Lcom/android/settings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/WifiSettings;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 637
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-get2()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "user continue connecting AP with EAP-TLS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-get2()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->-wrap1(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->-get2()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->-wrap0(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V

    .line 641
    invoke-static {v2}, Lcom/android/settings/wifi/WifiSettings;->-set0(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    .line 642
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-get1(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 636
    :goto_0
    return-void

    .line 644
    :cond_1
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "WIFI_WARNING_CA_CERT_DIALOG_ID config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
