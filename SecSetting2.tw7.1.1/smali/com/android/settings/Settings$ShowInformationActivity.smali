.class public Lcom/android/settings/Settings$ShowInformationActivity;
.super Lcom/samsung/android/settings/SettingsActivityWrapper;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowInformationActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/samsung/android/settings/SettingsActivityWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SettingsActivityWrapper;->onCreate(Landroid/os/Bundle;)V

    .line 153
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const v0, 0x7f0b0a3f

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings$ShowInformationActivity;->setTitle(I)V

    .line 151
    :cond_0
    return-void
.end method
