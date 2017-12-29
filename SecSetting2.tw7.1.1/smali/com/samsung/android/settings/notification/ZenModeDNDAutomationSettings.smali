.class public Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;
.super Lcom/android/settings/notification/ZenModeSettingsBase;
.source "ZenModeDNDAutomationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$1;,
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;,
        Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;
    }
.end annotation


# static fields
.field static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

.field private misDeleteMode:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)Lcom/android/settings/utils/ZenServiceListing;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    invoke-static {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->removeZenRule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;
    .param p2, "isSystemRule"    # Z
    .param p3, "providerLabel"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "ruleName"    # Ljava/lang/CharSequence;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 338
    new-instance v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$1;-><init>()V

    .line 337
    sput-object v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;-><init>()V

    return-void
.end method

.method private computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;
    .locals 6
    .param p1, "rule"    # Landroid/app/AutomaticZenRule;
    .param p2, "isSystemRule"    # Z
    .param p3, "providerLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "mode":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    const v3, 0x7f0b1cd9

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "ruleState":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .end local v1    # "ruleState":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 276
    :cond_0
    const v2, 0x7f0b1d09

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ruleState":Ljava/lang/String;
    goto :goto_0

    .line 280
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 281
    aput-object p3, v2, v4

    aput-object v1, v2, v5

    .line 280
    const v3, 0x7f0b1cda

    invoke-virtual {p0, v3, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private static computeZenModeCaption(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "zenMode"    # I

    .prologue
    .line 296
    packed-switch p1, :pswitch_data_0

    .line 304
    const/4 v0, 0x0

    return-object v0

    .line 298
    :pswitch_0
    const v0, 0x7f0b1c85

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 300
    :pswitch_1
    const v0, 0x7f0b1c84

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 302
    :pswitch_2
    const v0, 0x7f0b1c86

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getConditionProviderConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    .line 286
    .local v0, "c":Lcom/android/settings/utils/ManagedServiceSettings$Config;
    const-string/jumbo v1, "ZenModeSettings"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 287
    const-string/jumbo v1, "enabled_notification_policy_access_packages"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    .line 288
    const-string/jumbo v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->secondarySetting:Ljava/lang/String;

    .line 289
    const-string/jumbo v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 290
    const-string/jumbo v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 291
    const-string/jumbo v1, "condition provider"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    .line 292
    return-object v0
.end method

.method private static getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 4
    .param p0, "si"    # Landroid/content/pm/ServiceInfo;

    .prologue
    const/4 v3, 0x0

    .line 328
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_1

    :cond_0
    return-object v3

    .line 330
    :cond_1
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "configurationActivity":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 332
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    return-object v1

    .line 334
    :cond_2
    return-object v3
.end method

.method private removeDNDZenRule(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    move-result v0

    .line 512
    .local v0, "success":Z
    return v0
.end method

.method private showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "ruleId"    # Ljava/lang/String;
    .param p2, "ruleName"    # Ljava/lang/CharSequence;

    .prologue
    .line 144
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const v2, 0x7f0b1cc6

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 146
    const v1, 0x7f0b13e7

    const/4 v2, 0x0

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$2;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Ljava/lang/String;)V

    .line 147
    const v2, 0x7f0b1cc7

    .line 144
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 143
    return-void
.end method

.method private sortedRules()[Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mRules:Ljava/util/Set;

    iget-object v2, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mRules:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/util/Map$Entry;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    .line 174
    .local v0, "rt":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    sget-object v1, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 175
    return-object v0
.end method

.method private updateControls()V
    .locals 22

    .prologue
    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    .line 180
    .local v11, "root":Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 181
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->sortedRules()[Ljava/util/Map$Entry;

    move-result-object v14

    .line 183
    .local v14, "sortedRules":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 185
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 186
    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v19, v0

    move/from16 v18, v17

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v13, v14, v18

    .line 187
    .local v13, "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AutomaticZenRule;

    .line 188
    .local v12, "rule":Landroid/app/AutomaticZenRule;
    const-string/jumbo v17, "twschedule"

    invoke-virtual {v12}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 186
    :goto_1
    add-int/lit8 v17, v18, 0x1

    move/from16 v18, v17

    goto :goto_0

    .line 191
    :cond_0
    new-instance v9, Lcom/samsung/android/settings/notification/RadioPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Lcom/samsung/android/settings/notification/RadioPreference;-><init>(Landroid/content/Context;)V

    .line 193
    .local v9, "pref":Lcom/samsung/android/settings/notification/RadioPreference;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    invoke-virtual {v12}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 194
    .local v6, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v15, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v9}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/preference/Preference;)V

    .line 195
    .local v15, "task":Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    aput-object v6, v17, v20

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    invoke-virtual {v12}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 197
    invoke-virtual {v12}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v17

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 196
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v12, v1, v2}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->computeRuleSummary(Landroid/app/AutomaticZenRule;ZLjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    new-instance v17, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$3;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-virtual {v12}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 222
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setKey(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v11, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 196
    :cond_1
    const/16 v17, 0x1

    goto :goto_2

    .line 217
    .end local v6    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "task":Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$LoadIconTask;
    :catch_0
    move-exception v3

    .line 218
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const v17, 0x7f0201e6

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/notification/RadioPreference;->setIcon(I)V

    goto/16 :goto_1

    .line 225
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9    # "pref":Lcom/samsung/android/settings/notification/RadioPreference;
    .end local v12    # "rule":Landroid/app/AutomaticZenRule;
    .end local v13    # "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_2
    return-void

    .line 228
    :cond_3
    const/16 v17, 0x0

    array-length v0, v14

    move/from16 v18, v0

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    aget-object v13, v14, v17

    .line 229
    .restart local v13    # "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    new-instance v10, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1, v13}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;-><init>(Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;Landroid/content/Context;Ljava/util/Map$Entry;)V

    .line 230
    .local v10, "pref":Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;
    iget-boolean v0, v10, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;->appExists:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 231
    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 234
    .end local v10    # "pref":Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings$ZenRulePreference;
    .end local v13    # "sortedRule":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/app/AutomaticZenRule;>;"
    :cond_5
    new-instance v8, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 235
    .local v8, "p":Landroid/preference/Preference;
    const v17, 0x7f0201a8

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setIcon(I)V

    .line 236
    const v17, 0x7f0b1cc3

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 237
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 248
    invoke-virtual {v11}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v17

    if-nez v17, :cond_6

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    .line 250
    const v18, 0x7f0402d4

    const/16 v19, 0x0

    .line 249
    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 251
    .local v4, "emptyView":Landroid/view/View;
    const v17, 0x7f1100e5

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 252
    .local v5, "imageView":Landroid/widget/ImageView;
    const v17, 0x7f02057d

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d01cb

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 254
    const v17, 0x7f1105ee

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 255
    .local v16, "textView":Landroid/widget/TextView;
    const v17, 0x7f0b0c16

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    .line 256
    const v17, 0x7f1002a2

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0d01cb

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 258
    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x102003f

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 260
    .local v7, "listContainer":Landroid/view/ViewGroup;
    if-eqz v7, :cond_6

    .line 262
    new-instance v17, Landroid/view/ViewGroup$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 261
    move-object/from16 v0, v17

    invoke-virtual {v7, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .end local v4    # "emptyView":Landroid/view/View;
    .end local v5    # "imageView":Landroid/widget/ImageView;
    .end local v7    # "listContainer":Landroid/view/ViewGroup;
    .end local v16    # "textView":Landroid/widget/TextView;
    :cond_6
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 269
    const/16 v0, 0x8e

    return v0
.end method

.method protected initEmptyTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 454
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 80
    const v0, 0x7f08016a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->addPreferencesFromResource(I)V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 82
    new-instance v0, Lcom/android/settings/utils/ZenServiceListing;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/utils/ZenServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/utils/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/utils/ZenServiceListing;->reloadApprovedServices()V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 459
    const v0, 0x7f0b0268

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 461
    const/4 v0, 0x2

    const v1, 0x7f0b1ac5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 463
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/ZenModeSettingsBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 458
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onDestroy()V

    .line 89
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 485
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 505
    return v4

    .line 487
    :pswitch_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    .line 488
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    .line 489
    return v5

    .line 491
    :pswitch_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    .line 492
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 493
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 494
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    instance-of v3, v3, Lcom/samsung/android/settings/notification/RadioPreference;

    if-eqz v3, :cond_0

    .line 495
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/notification/RadioPreference;

    .line 496
    .local v1, "radioPref":Lcom/samsung/android/settings/notification/RadioPreference;
    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 497
    iget-object v3, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->mContext:Landroid/content/Context;

    const/16 v4, 0xaf

    invoke-static {v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 498
    invoke-virtual {v1}, Lcom/samsung/android/settings/notification/RadioPreference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->removeDNDZenRule(Ljava/lang/String;)Z

    .line 493
    .end local v1    # "radioPref":Lcom/samsung/android/settings/notification/RadioPreference;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 502
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    .line 503
    return v5

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 468
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 469
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 470
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 471
    return-void

    .line 474
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->misDeleteMode:Z

    if-eqz v0, :cond_1

    .line 475
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 476
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 467
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 479
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/settings/notification/ZenModeSettingsBase;->onResume()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    return-void

    .line 109
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    .line 104
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .prologue
    .line 94
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/ZenModeDNDAutomationSettings;->updateControls()V

    .line 99
    return-void
.end method
