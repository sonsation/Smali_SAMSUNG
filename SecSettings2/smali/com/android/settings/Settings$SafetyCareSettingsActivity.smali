.class public Lcom/android/settings/Settings$SafetyCareSettingsActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafetyCareSettingsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 538
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    .line 539
    invoke-static {p0}, Lcom/android/settings/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$SafetyCareSettingsActivity;->setTitle(I)V

    .line 537
    return-void
.end method
