.class Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;
.super Ljava/lang/Object;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 904
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    .line 905
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->setSelectedItem(ZI)V

    .line 906
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    .line 907
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 908
    .local v0, "mContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_number_of_max_macaddr_client"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$14;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList;)Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApAllowedList$AllowedDevicesAdapter;->getCount()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 903
    return-void
.end method
