.class public Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;,
        Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;,
        Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAllPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFlashNotification:Landroid/preference/SwitchPreference;

.field private mScreenNotification:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;-><init>()V

    .line 199
    sput-object v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    .line 223
    new-instance v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$2;-><init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 30
    return-void
.end method

.method private findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 3
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "db"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 129
    .local v0, "preference":Landroid/preference/Preference;
    new-instance v1, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;-><init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 130
    .local v1, "preferenceItem":Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    return-object v0
.end method

.method private updateAllPreferences()V
    .locals 3

    .prologue
    .line 115
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "preferenceItem$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;

    .line 116
    .local v0, "preferenceItem":Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->updatePreference()Z

    goto :goto_0

    .line 114
    .end local v0    # "preferenceItem":Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0336

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->addPreferencesFromResource(I)V

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 68
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    .line 67
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v0, "light_notification_flash"

    .line 70
    const-string/jumbo v1, "flash_notification"

    .line 69
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    .line 75
    :goto_0
    const-string/jumbo v0, "light_notification_screen"

    .line 76
    const-string/jumbo v1, "screen_notification"

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    .line 78
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 79
    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    .line 61
    return-void

    .line 72
    :cond_0
    const-string/jumbo v0, "light_notification_flash"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .locals 0
    .param p1, "dockConnected"    # Z

    .prologue
    .line 138
    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2
    .param p1, "isDesktopModeEnabled"    # Z

    .prologue
    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 143
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "LightNotification"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 95
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 176
    .local v0, "updateValue":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "flash_notification"

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0337

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 181
    if-eqz v0, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 178
    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 183
    return v2

    :cond_1
    move v1, v3

    .line 176
    goto :goto_0

    .line 185
    .end local v0    # "updateValue":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 187
    .restart local v0    # "updateValue":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_notification"

    if-eqz v0, :cond_3

    move v1, v2

    :goto_1
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0338

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 192
    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 189
    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 194
    return v2

    :cond_3
    move v1, v3

    .line 187
    goto :goto_1

    :cond_4
    move v4, v3

    .line 192
    goto :goto_2

    .line 196
    .end local v0    # "updateValue":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_5
    return v3
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 84
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->onDesktopModeChanged(Z)V

    .line 90
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->updateAllPreferences()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "LightNotification"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 83
    return-void
.end method
