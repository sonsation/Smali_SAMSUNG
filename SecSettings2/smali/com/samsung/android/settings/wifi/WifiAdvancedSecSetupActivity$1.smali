.class Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiAdvancedSecSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 108
    if-nez v2, :cond_0

    .line 110
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 108
    if-eqz v2, :cond_2

    .line 111
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-wrap1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 112
    :cond_2
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    const-string/jumbo v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "state":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 115
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get2(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 116
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get2(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 119
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 121
    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 122
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get2(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 123
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get2(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 126
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity$1;->this$0:Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;->-get1(Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method
