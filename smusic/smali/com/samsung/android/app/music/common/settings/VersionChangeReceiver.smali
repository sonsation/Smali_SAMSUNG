.class public Lcom/samsung/android/app/music/common/settings/VersionChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VersionChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.MY_PACKAGE_REPLACED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 19
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDefaultSettings(Landroid/content/Context;)V

    .line 20
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPlayerDefaultSetting(Landroid/content/Context;)V

    .line 21
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->hasMusicCommonUtility(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDisableSettings(Landroid/content/Context;)V

    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_0

    .line 24
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPlayerDisableSetting(Landroid/content/Context;)V

    .line 32
    :cond_0
    :goto_0
    const-class v2, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setComponentEnabledIfNotEnabled(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    invoke-static {p1}, Lcom/samsung/android/app/music/common/settings/VersionManager;->check(Landroid/content/Context;)V

    .line 36
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 26
    .restart local v1    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->hasLegacySoundPicker(Landroid/content/pm/PackageManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDisableSettings(Landroid/content/Context;)V

    goto :goto_0
.end method
