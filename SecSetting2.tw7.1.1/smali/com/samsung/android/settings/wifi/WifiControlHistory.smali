.class public Lcom/samsung/android/settings/wifi/WifiControlHistory;
.super Landroid/preference/PreferenceFragment;
.source "WifiControlHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiControlHistory$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static selectionArgs:Ljava/lang/String;


# instance fields
.field private mDateFormat:Ljava/text/DateFormat;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferenceCategory:Landroid/preference/PreferenceGroup;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTimeFormat:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    .line 77
    const-string/jumbo v0, "package_name!= \'system\' AND package_name!= \'com.android.settings\' AND package_name!= \'com.android.systemui\' AND package_name!= \'com.samsung.android.easysetup\' AND package_name!= \'com.sec.android.easysettings\' AND package_name!= \'com.sec.android.emergencymode.service\'"

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->selectionArgs:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiControlHistory$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory$1;-><init>(Lcom/samsung/android/settings/wifi/WifiControlHistory;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 52
    return-void
.end method

.method private addPreferences(Ljava/lang/String;IJ)Landroid/preference/Preference;
    .locals 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastEvent"    # I
    .param p3, "lastEventTime"    # J

    .prologue
    .line 210
    sget-boolean v11, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "WifiControlHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addPreferences, packageName:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const-string/jumbo v10, ""

    .line 213
    .local v10, "title":Ljava/lang/String;
    const-string/jumbo v9, ""

    .line 214
    .local v9, "summary":Ljava/lang/String;
    const/4 v7, 0x0

    .line 216
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    const-string/jumbo v11, "samsung.wifi.autowifi"

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f0b15b1

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 219
    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v12, "com.android.settings"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 240
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mDateFormat:Ljava/text/DateFormat;

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-static {v11}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    .line 242
    const-string/jumbo v6, ""

    .line 243
    .local v6, "history":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 244
    .local v3, "date":Ljava/util/Date;
    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 245
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " \u200e "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v12, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "dateFormat":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 258
    :goto_1
    new-instance v8, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 259
    .local v8, "pref":Landroid/preference/Preference;
    const v11, 0x7f04025e

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 260
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 262
    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 263
    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-object v8

    .line 220
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "dateFormat":Ljava/lang/String;
    .end local v6    # "history":Ljava/lang/String;
    .end local v8    # "pref":Landroid/preference/Preference;
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v5

    .line 221
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "WifiControlHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addPreferences, NameNotFoundException"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/4 v11, 0x0

    return-object v11

    .line 226
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_1
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 228
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 229
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 231
    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_1

    .line 232
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    goto/16 :goto_0

    .line 234
    .end local v2    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v5

    .line 235
    .restart local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v11, "WifiControlHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "addPreferences, NameNotFoundException"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v11, 0x0

    return-object v11

    .line 249
    .end local v5    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3    # "date":Ljava/util/Date;
    .restart local v4    # "dateFormat":Ljava/lang/String;
    .restart local v6    # "history":Ljava/lang/String;
    .restart local v7    # "icon":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const v13, 0x7f0b0f5e

    invoke-virtual {v11, v13, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 252
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const v13, 0x7f0b0f5f

    invoke-virtual {v11, v13, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setEmptyMessage()V
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;-><init>(Landroid/content/Context;I)V

    .line 271
    .local v0, "pref":Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;
    const v1, 0x7f0b0f60

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiNoItemsPreference;->setTitle(I)V

    .line 273
    if-eqz v0, :cond_1

    .line 274
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiControlHistory"

    const-string/jumbo v2, "setEmptyMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 269
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f08015f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->addPreferencesFromResource(I)V

    .line 92
    const-string/jumbo v1, "control_applications"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    .line 93
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "action_bar"

    const-string/jumbo v4, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    .local v0, "toolbar":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 87
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 115
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "packageName":Ljava/lang/String;
    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceTreeClick, packageName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    const-string/jumbo v0, "samsung.wifi.autowifi"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 142
    const-class v1, Lcom/android/settings/wifi/SmartNetworkSwitchSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 143
    const/4 v2, 0x0

    const v3, 0x7f0b15b1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v5, p0

    .line 141
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 150
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 145
    :cond_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v0, "package"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 148
    const v3, 0x7f0b182b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 147
    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mResolver:Landroid/content/ContentResolver;

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->updateHistory()V

    .line 104
    return-void
.end method

.method public updateHistory()V
    .locals 18

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 157
    const-string/jumbo v2, "content://com.samsung.server.wifi/control"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 158
    .local v3, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 161
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/samsung/android/settings/wifi/WifiControlHistory;->selectionArgs:Ljava/lang/String;

    const-string/jumbo v7, "time_stamp DESC"

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 163
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_2

    .line 164
    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, cursor is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setEmptyMessage()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    if-eqz v8, :cond_1

    .line 198
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_1
    return-void

    .line 171
    :cond_2
    :try_start_1
    const-string/jumbo v2, "WifiControlHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHistory, cursor count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", columns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 175
    const-string/jumbo v2, "package_name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 176
    .local v12, "indexPackageName":I
    const-string/jumbo v2, "last_control"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 177
    .local v10, "indexLastControl":I
    const-string/jumbo v2, "time_stamp"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 179
    .local v11, "indexLastControlTime":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_a

    .line 180
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 181
    .local v16, "packageName":Ljava/lang/String;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 182
    .local v13, "lastEvent":I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 184
    .local v14, "lastEventTime":J
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->addPreferences(Ljava/lang/String;IJ)Landroid/preference/Preference;

    move-result-object v17

    .line 186
    .local v17, "pref":Landroid/preference/Preference;
    if-eqz v17, :cond_7

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 192
    :cond_3
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 194
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "indexLastControl":I
    .end local v11    # "indexLastControlTime":I
    .end local v12    # "indexPackageName":I
    .end local v13    # "lastEvent":I
    .end local v14    # "lastEventTime":J
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "pref":Landroid/preference/Preference;
    :catch_0
    move-exception v9

    .line 195
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, IllegalStateException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    if-eqz v8, :cond_5

    .line 198
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 203
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/WifiControlHistory;->mPreferenceCategory:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 204
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiControlHistory;->setEmptyMessage()V

    .line 154
    :cond_6
    return-void

    .line 189
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "indexLastControl":I
    .restart local v11    # "indexLastControlTime":I
    .restart local v12    # "indexPackageName":I
    .restart local v13    # "lastEvent":I
    .restart local v14    # "lastEventTime":J
    .restart local v16    # "packageName":Ljava/lang/String;
    .restart local v17    # "pref":Landroid/preference/Preference;
    :cond_7
    :try_start_3
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiControlHistory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateHistory, pref is null."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 196
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "indexLastControl":I
    .end local v11    # "indexLastControlTime":I
    .end local v12    # "indexPackageName":I
    .end local v13    # "lastEvent":I
    .end local v14    # "lastEventTime":J
    .end local v16    # "packageName":Ljava/lang/String;
    .end local v17    # "pref":Landroid/preference/Preference;
    :catchall_0
    move-exception v2

    .line 197
    if-eqz v8, :cond_9

    .line 198
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiControlHistory"

    const-string/jumbo v5, "updateHistory, close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_9
    throw v2

    .line 197
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "indexLastControl":I
    .restart local v11    # "indexLastControlTime":I
    .restart local v12    # "indexPackageName":I
    :cond_a
    if-eqz v8, :cond_5

    .line 198
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiControlHistory;->DBG:Z

    if-eqz v2, :cond_b

    const-string/jumbo v2, "WifiControlHistory"

    const-string/jumbo v4, "updateHistory, close"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_b
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method
