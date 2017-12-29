.class public abstract Lcom/android/settings/InstrumentedPreferenceActivity;
.super Lcom/android/settings/PreferenceActivity;
.source "InstrumentedPreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetrics()I
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    return v0
.end method

.method protected abstract getMetricsCategory()I
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/settings/PreferenceActivity;->onPause()V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/settings/PreferenceActivity;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/InstrumentedPreferenceActivity;->getMetricsCategory()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    .line 41
    return-void
.end method
