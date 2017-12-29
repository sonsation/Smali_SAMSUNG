.class public Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;
.super Landroid/preference/Preference;
.source "WifiSNSExcludedAPPreference.java"


# static fields
.field private static final STATE_SECURED:[I

.field private static count:I

.field private static wifi_signal_attributes:[I


# instance fields
.field public index:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public network:Ljava/lang/String;

.field public priority:I

.field public security:Ljava/lang/String;

.field public signalLevel:I

.field public ssid:Ljava/lang/String;

.field public timeoutIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    sput v2, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->count:I

    .line 74
    new-array v0, v3, [I

    const v1, 0x7f010004

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->STATE_SECURED:[I

    .line 75
    new-array v0, v3, [I

    const v1, 0x7f010007

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->wifi_signal_attributes:[I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->ssid:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->index:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->network:Ljava/lang/String;

    .line 58
    iput v1, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->priority:I

    .line 59
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->security:Ljava/lang/String;

    .line 60
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->timeoutIndex:I

    .line 62
    iput v1, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->signalLevel:I

    .line 79
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 97
    .local v4, "v":Landroid/view/View;
    :try_start_0
    const-string/jumbo v5, "ro.build.characteristics"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v5

    const-string/jumbo v6, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_ADAPTIVE_WIFI"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 99
    const-string/jumbo v5, "Smart Network Switch"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Wifi_ConfigAutoWifiNaming"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 101
    :cond_0
    if-eqz v0, :cond_3

    const-string/jumbo v5, "tablet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 102
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b15d6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "explanation":Ljava/lang/String;
    :goto_0
    const v5, 0x7f1107c8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 107
    .local v2, "expTxv":Landroid/widget/TextView;
    if-eqz v2, :cond_1

    .line 108
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v0    # "deviceType":Ljava/lang/String;
    .end local v2    # "expTxv":Landroid/widget/TextView;
    .end local v3    # "explanation":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 100
    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b15d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "explanation":Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v3    # "explanation":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiSNSExcludedAPPreference;->mContext:Landroid/content/Context;

    const v6, 0x7f0b15d5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "explanation":Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v0    # "deviceType":Ljava/lang/String;
    .end local v3    # "explanation":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "WifiSNSExcludedAPPreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error calling getView : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 86
    return-void
.end method
