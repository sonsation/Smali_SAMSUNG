.class Lcom/android/settings/TetherSettings$17;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$dnsCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;
    .param p2, "val$edit"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "val$dnsCheckBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$17;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/TetherSettings$17;->val$dnsCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 770
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->isTAConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "pref_dns_usb_tether_wifi_on"

    .line 772
    iget-object v2, p0, Lcom/android/settings/TetherSettings$17;->val$dnsCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    .line 771
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 773
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 774
    iget-object v1, p0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v0, p0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    const-string/jumbo v2, "wifi"

    invoke-static {v0, v2}, Lcom/android/settings/TetherSettings;->-wrap1(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {v1, v0}, Lcom/android/settings/TetherSettings;->-set6(Lcom/android/settings/TetherSettings;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    .line 775
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->-get14(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 776
    iget-object v0, p0, Lcom/android/settings/TetherSettings$17;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->-wrap7(Lcom/android/settings/TetherSettings;I)V

    .line 769
    :cond_0
    return-void
.end method
