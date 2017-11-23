.class public Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "LightNotificationPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;,
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

.field private mFlashNotification:Landroid/preference/SwitchPreference;

.field private mScreenNotification:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    new-instance v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$1;-><init>()V

    .line 242
    sput-object v0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private enableMotion()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->isMotionSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const-string/jumbo v0, "LightNotification"

    const-string/jumbo v1, "Motion is not enabled because not supported by this binary."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return v6

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_merged_mute_pause"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_motion"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 229
    const-string/jumbo v0, "LightNotification"

    const-string/jumbo v1, "Motion is enabled for light notification."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->isMotionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0400

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 234
    const v3, 0x7f0b01ee

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 239
    :cond_1
    return v5
.end method

.method private findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;
    .locals 3
    .param p1, "key"    # Ljava/lang/CharSequence;
    .param p2, "db"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 105
    .local v0, "preference":Landroid/preference/Preference;
    new-instance v1, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;

    invoke-direct {v1, p0, p2, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;-><init>(Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 106
    .local v1, "preferenceItem":Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 108
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    return-object v0
.end method

.method private isMotionEnabled()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "master_motion"

    .line 201
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_0

    const/4 v0, 0x1

    .line 205
    .local v0, "masterMotion":Z
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "motion_overturn"

    .line 204
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_1

    const/4 v2, 0x1

    .line 208
    .local v2, "motionTurnOver":Z
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "master_motion"

    .line 207
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    const/4 v1, 0x1

    .line 210
    .local v1, "motionMute":Z
    :goto_2
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .end local v1    # "motionMute":Z
    :goto_3
    return v1

    .line 201
    .end local v0    # "masterMotion":Z
    .end local v2    # "motionTurnOver":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "masterMotion":Z
    goto :goto_0

    .line 204
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "motionTurnOver":Z
    goto :goto_1

    .line 207
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "motionMute":Z
    goto :goto_2

    :cond_3
    move v1, v3

    .line 210
    goto :goto_3
.end method

.method private isMotionSupport()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "motion":Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 177
    .local v5, "notSupportMotionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v7, "merged_mute_or_pause_switch"

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    .line 180
    .local v3, "SUPPORT_MUTE_PAUSE":Z
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 181
    const-string/jumbo v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION"

    .line 180
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 185
    .local v1, "SUPPORT_MOTION":Z
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    .line 186
    const-string/jumbo v8, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    .line 185
    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 189
    .local v2, "SUPPORT_MOTION_TRUN_OVER":Z
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    .line 191
    .local v0, "IS_TABLET":Z
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v6

    .line 177
    .end local v0    # "IS_TABLET":Z
    .end local v1    # "SUPPORT_MOTION":Z
    .end local v2    # "SUPPORT_MOTION_TRUN_OVER":Z
    .end local v3    # "SUPPORT_MUTE_PAUSE":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "SUPPORT_MUTE_PAUSE":Z
    goto :goto_0

    .line 191
    .restart local v0    # "IS_TABLET":Z
    .restart local v1    # "SUPPORT_MOTION":Z
    .restart local v2    # "SUPPORT_MOTION_TRUN_OVER":Z
    :cond_2
    const/4 v6, 0x1

    goto :goto_1
.end method

.method private updateAllPreferences()V
    .locals 3

    .prologue
    .line 91
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

    .line 92
    .local v0, "preferenceItem":Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;->updatePreference()Z

    goto :goto_0

    .line 90
    .end local v0    # "preferenceItem":Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment$PreferenceItem;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10025b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->addPreferencesFromResource(I)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mAllPreferences:Ljava/util/ArrayList;

    .line 62
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    .line 63
    const-string/jumbo v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_FLASH_NOTIFICATION"

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const-string/jumbo v0, "light_notification_flash"

    .line 65
    const-string/jumbo v1, "flash_notification"

    .line 64
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    .line 70
    :goto_0
    const-string/jumbo v0, "light_notification_screen"

    .line 71
    const-string/jumbo v1, "screen_notification"

    .line 70
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->findAndAddPreference(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    .line 56
    return-void

    .line 67
    :cond_0
    const-string/jumbo v0, "light_notification_flash"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const v7, 0x7f10025c

    const/16 v4, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mFlashNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 142
    .local v0, "updateValue":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "flash_notification"

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 143
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->isMotionEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 148
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 150
    if-eqz v0, :cond_1

    move v3, v4

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 147
    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 152
    return v2

    :cond_2
    move v1, v3

    .line 142
    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->enableMotion()Z

    goto :goto_1

    .line 154
    .end local v0    # "updateValue":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->mScreenNotification:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 155
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 156
    .restart local v0    # "updateValue":Z
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_notification"

    if-eqz v0, :cond_5

    move v1, v2

    :goto_2
    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 161
    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 158
    invoke-static {v1, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    .line 163
    return v2

    :cond_5
    move v1, v3

    .line 156
    goto :goto_2

    :cond_6
    move v4, v3

    .line 161
    goto :goto_3

    .line 165
    .end local v0    # "updateValue":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_7
    return v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/LightNotificationPreferenceFragment;->updateAllPreferences()V

    .line 75
    return-void
.end method
