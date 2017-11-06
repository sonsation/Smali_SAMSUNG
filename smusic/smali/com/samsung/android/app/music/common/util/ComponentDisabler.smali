.class public Lcom/samsung/android/app/music/common/util/ComponentDisabler;
.super Ljava/lang/Object;
.source "ComponentDisabler.java"


# static fields
.field public static final LEGACY_SOUND_PICKER_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.soundpicker"

.field public static final MUSIC_COMMON_UTILITY_PACKAGE:Ljava/lang/String; = "com.sec.android.mmapp"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasLegacySoundPicker(Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 61
    :try_start_0
    const-string v1, "com.samsung.android.app.soundpicker"

    const/16 v2, 0x80

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    const/4 v1, 0x1

    .line 64
    :goto_0
    return v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasMusicCommonUtility(Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x1

    .line 52
    :try_start_0
    const-string v2, "com.sec.android.mmapp"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    return v1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static setComponentsSetting(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "newState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 41
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v1

    .line 44
    .local v1, "curState":I
    if-eq v1, p2, :cond_0

    .line 45
    const/4 v3, 0x1

    invoke-virtual {v2, v0, p2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 46
    const-string v3, "Ui"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setComponentsSetting() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    return-void
.end method

.method public static setSoundPickerDefaultSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setComponentsSetting(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 27
    return-void
.end method

.method public static setSoundPickerDisableSettings(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v0, Lcom/samsung/android/app/music/common/activity/SoundPickerActivity;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setComponentsSetting(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 37
    return-void
.end method

.method public static setSoundPlayerDefaultSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-class v0, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setComponentsSetting(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 22
    return-void
.end method

.method public static setSoundPlayerDisableSetting(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const-class v0, Lcom/samsung/android/app/music/common/activity/SoundPlayerActivity;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/common/util/ComponentDisabler;->setComponentsSetting(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 32
    return-void
.end method
