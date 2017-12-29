.class public Lcom/samsung/android/settings/DomesticSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "DomesticSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/DomesticSettings$1;,
        Lcom/samsung/android/settings/DomesticSettings$2;,
        Lcom/samsung/android/settings/DomesticSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mTwoPhonePreference:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$1;-><init>()V

    .line 84
    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 136
    new-instance v0, Lcom/samsung/android/settings/DomesticSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/DomesticSettings$2;-><init>()V

    .line 135
    sput-object v0, Lcom/samsung/android/settings/DomesticSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMptcp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    const-string/jumbo v0, "two_phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/preference/PreferenceScreen;

    .line 51
    return-void

    .line 57
    :cond_0
    const-string/jumbo v0, "giga_lte"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/DomesticSettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 67
    const-string/jumbo v2, "giga_lte"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/DomesticSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 68
    .local v1, "mGiGALTE":Landroid/preference/PreferenceScreen;
    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "mptcp_value"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0b1d08

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 73
    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/DomesticSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    .line 74
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_1

    .line 75
    iget-object v4, p0, Lcom/samsung/android/settings/DomesticSettings;->mTwoPhonePreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_4

    move v2, v3

    :goto_2
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 64
    :cond_1
    return-void

    .line 70
    :cond_2
    const v2, 0x7f0b1d09

    goto :goto_0

    .line 73
    :cond_3
    const/4 v0, 0x0

    .local v0, "isDesktopMode":Z
    goto :goto_1

    .line 75
    .end local v0    # "isDesktopMode":Z
    :cond_4
    const/4 v2, 0x1

    goto :goto_2
.end method
