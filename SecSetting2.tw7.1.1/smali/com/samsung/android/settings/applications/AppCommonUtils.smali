.class public Lcom/samsung/android/settings/applications/AppCommonUtils;
.super Ljava/lang/Object;
.source "AppCommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlayTitle()I
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const v0, 0x7f0b0440

    return v0

    .line 177
    :cond_0
    const v0, 0x7f0b1dd6

    return v0
.end method

.method public static getWriteSettingsTitle()I
    .locals 2

    .prologue
    .line 182
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const v0, 0x7f0b0441

    return v0

    .line 185
    :cond_0
    const v0, 0x7f0b1de0

    return v0
.end method

.method public static hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    const-string/jumbo v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 193
    const-string/jumbo v4, "getDefaultApplicationInternal"

    .line 194
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 191
    invoke-static {p0, v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "defaultApp":Ljava/lang/String;
    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static updateDefaultBrowserPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultBrowserPreference;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "preference"    # Lcom/android/settings/applications/DefaultBrowserPreference;

    .prologue
    const v6, 0x7f0b01ea

    const/4 v4, 0x0

    .line 47
    if-nez p2, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v5, "http:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 62
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 65
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {p2, v4}, Lcom/android/settings/applications/DefaultBrowserPreference;->setEnabled(Z)V

    .line 46
    return-void

    .line 67
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-virtual {p2, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 70
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p2, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    .line 71
    const-string/jumbo v5, "AppCommonUtils"

    const-string/jumbo v6, "Cannot set empty default Browser value!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 133
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 134
    :cond_0
    return-void

    .line 133
    :cond_1
    if-eqz p0, :cond_0

    .line 136
    const/4 v1, 0x1

    .line 138
    .local v1, "enabled":Z
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v3, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    instance-of v7, p2, Lcom/android/settings/applications/DefaultHomePreference;

    if-eqz v7, :cond_5

    move-object v7, p2

    .line 142
    check-cast v7, Lcom/android/settings/applications/DefaultHomePreference;

    invoke-virtual {v7}, Lcom/android/settings/applications/DefaultHomePreference;->refreshHomeOptions()V

    .line 155
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v5

    .line 156
    .local v5, "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 157
    const/4 v1, 0x0

    .line 164
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    .line 166
    :goto_2
    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    if-eqz v4, :cond_4

    .line 167
    :cond_3
    const/4 v1, 0x0

    .line 170
    :cond_4
    invoke-virtual {p2, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 132
    return-void

    .line 144
    .end local v5    # "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    :cond_5
    const/high16 v7, 0x10000

    invoke-virtual {p1, v3, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 145
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 148
    .local v0, "def":Landroid/content/ComponentName;
    if-eqz v6, :cond_2

    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v6, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 159
    .end local v0    # "def":Landroid/content/ComponentName;
    .end local v2    # "homeActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v5    # "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    :cond_6
    invoke-static {p0, v3}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    goto :goto_1

    .line 164
    :cond_8
    const/4 v4, 0x0

    .local v4, "isDesktopEnabled":Z
    goto :goto_2
.end method

.method public static updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "preference"    # Lcom/android/settings/applications/DefaultPhonePreference;

    .prologue
    .line 83
    if-nez p2, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultPhonePreference;->loadDialerApps()V

    .line 87
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultPhonePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, "appName":Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 92
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultPhonePreference;->setEnabled(Z)V

    .line 95
    const/high16 v3, 0x10000

    .line 94
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 96
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 101
    invoke-virtual {p2, v0}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 82
    :goto_0
    return-void

    .line 103
    :cond_2
    const v3, 0x7f0b01ea

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(I)V

    .line 104
    const-string/jumbo v3, "AppCommonUtils"

    const-string/jumbo v4, "Cannot set empty default Phone value!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateDefaultSMSPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultSmsPreference;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "preference"    # Lcom/android/settings/applications/DefaultSmsPreference;

    .prologue
    .line 110
    if-nez p2, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultSmsPreference;->loadSmsApps()V

    .line 114
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 115
    .local v0, "appName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    invoke-virtual {p2, v0}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 123
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 126
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setEnabled(Z)V

    .line 109
    return-void

    .line 118
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const v2, 0x7f0b01ea

    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(I)V

    goto :goto_0

    .line 126
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
