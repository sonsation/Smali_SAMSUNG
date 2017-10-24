.class Lcom/android/settings/wifi/AdvancedWifiSettings$6;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/AdvancedWifiSettings;->showPasspointWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/wifi/AdvancedWifiSettings;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "position"    # I

    .prologue
    const/4 v2, 0x1

    .line 1157
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-set0(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)Z

    .line 1158
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 1159
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEnableHs20:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v0, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-wrap1(Lcom/android/settings/wifi/AdvancedWifiSettings;Z)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings$6;->this$0:Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->-get1(Lcom/android/settings/wifi/AdvancedWifiSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v0

    .line 1163
    const-string/jumbo v1, "USER_ON"

    .line 1162
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    .line 1164
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1156
    return-void
.end method
