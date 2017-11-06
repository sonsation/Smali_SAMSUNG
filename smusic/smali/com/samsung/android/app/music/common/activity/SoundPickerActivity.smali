.class public Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;
.super Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;
.source "SoundPickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/SoundPickerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getSoundPickerSearchActivityClass()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/samsung/android/app/music/common/activity/SoundPickerSearchActivity;

    return-object v0
.end method

.method protected isNeedToIntentForwarding()Z
    .locals 6

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 22
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 23
    .local v2, "legacyPackageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->hasMusicCommonUtility(Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 24
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDisableSettings(Landroid/content/Context;)V

    .line 25
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-eq v4, v5, :cond_0

    .line 26
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPlayerDisableSetting(Landroid/content/Context;)V

    .line 28
    :cond_0
    const-string v2, "com.sec.android.mmapp"

    .line 34
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, "i":Landroid/content/Intent;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 39
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;->startActivity(Landroid/content/Intent;)V

    .line 40
    const/4 v4, 0x1

    .line 43
    .end local v1    # "i":Landroid/content/Intent;
    :goto_1
    return v4

    .line 29
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->hasLegacySoundPicker(Landroid/content/pm/PackageManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 30
    invoke-static {v0}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setSoundPickerDisableSettings(Landroid/content/Context;)V

    .line 31
    const-string v2, "com.samsung.android.app.soundpicker"

    goto :goto_0

    .line 43
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
