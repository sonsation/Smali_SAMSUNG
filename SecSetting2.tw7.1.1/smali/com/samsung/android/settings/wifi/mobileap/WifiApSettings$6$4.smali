.class Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;
.super Ljava/lang/Object;
.source "WifiApSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 1861
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get27(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get25(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)V

    .line 1866
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6$4;->this$1:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings$6;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;)Lcom/samsung/android/settings/helpdialog/TwHelpDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApSettings;->showHelpDialog(Lcom/samsung/android/settings/helpdialog/TwHelpDialog;)V

    goto :goto_0
.end method
