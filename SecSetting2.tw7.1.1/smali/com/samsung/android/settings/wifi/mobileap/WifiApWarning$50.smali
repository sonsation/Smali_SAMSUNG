.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

.field final synthetic val$crr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
    .param p2, "val$crr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;->val$crr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;->val$crr:Landroid/content/ContentResolver;

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    .line 1260
    return-void
.end method