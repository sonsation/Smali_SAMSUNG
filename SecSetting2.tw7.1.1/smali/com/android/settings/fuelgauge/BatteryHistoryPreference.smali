.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field private mBatteryInfo:Lcom/android/settingslib/BatteryInfo;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const v0, 0x7f04004f

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setSelectable(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v5, 0x8

    .line 79
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 80
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settingslib/BatteryInfo;

    if-nez v3, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 88
    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 89
    .local v2, "useGoogleRemainTime":Z
    if-eqz v2, :cond_1

    .line 90
    const v3, 0x7f110189

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    .local v0, "tempTv":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    .end local v0    # "tempTv":Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f11017b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 94
    const v3, 0x7f11017c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settingslib/BatteryInfo;

    iget-object v4, v4, Lcom/android/settingslib/BatteryInfo;->mChargeLabelString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    const v3, 0x7f11017d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/graph/UsageView;

    .line 97
    .local v1, "usageView":Lcom/android/settingslib/graph/UsageView;
    const v3, 0x7f110834

    invoke-virtual {v1, v3}, Lcom/android/settingslib/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x3f333333    # 0.7f

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 99
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    if-eqz v3, :cond_2

    .line 100
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/graph/UsageView;->setBatteryGraphColor(Landroid/content/Intent;)V

    .line 103
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settingslib/BatteryInfo;

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/android/settingslib/BatteryInfo$BatteryDataParser;

    invoke-virtual {v3, v1, v4}, Lcom/android/settingslib/BatteryInfo;->bindHistory(Lcom/android/settingslib/graph/UsageView;[Lcom/android/settingslib/BatteryInfo$BatteryDataParser;)V

    .line 78
    return-void
.end method

.method public performClick(Landroid/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    return-void

    .line 55
    :cond_0
    return-void
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 6
    .param p1, "batteryStats"    # Lcom/android/internal/os/BatteryStatsHelper;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 72
    .local v0, "elapsedRealtimeUs":J
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v3

    .line 73
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    .line 72
    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/settingslib/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;J)Lcom/android/settingslib/BatteryInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settingslib/BatteryInfo;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 69
    return-void
.end method
