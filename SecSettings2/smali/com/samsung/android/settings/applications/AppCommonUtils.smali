.class public Lcom/samsung/android/settings/applications/AppCommonUtils;
.super Ljava/lang/Object;
.source "AppCommonUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverlayTitle()I
    .locals 2

    .prologue
    .line 169
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const v0, 0x7f0b0395

    return v0

    .line 172
    :cond_0
    const v0, 0x7f0b1ba3

    return v0
.end method

.method public static getWriteSettingsTitle()I
    .locals 2

    .prologue
    .line 177
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const v0, 0x7f0b0396

    return v0

    .line 180
    :cond_0
    const v0, 0x7f0b1bad

    return v0
.end method

.method public static hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    const-string/jumbo v3, "content://com.sec.knox.provider2/ApplicationPolicy"

    .line 188
    const-string/jumbo v4, "getDefaultApplicationInternal"

    .line 189
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 190
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 186
    invoke-static {p0, v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
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
    const v6, 0x7f0b0166

    const/4 v4, 0x0

    .line 45
    if-nez p2, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultBrowserPreference;->refreshBrowserApps()V

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "packageName":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string/jumbo v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string/jumbo v5, "http:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 58
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 59
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 60
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultBrowserPreference;->setValue(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 63
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {p2, v4}, Lcom/android/settings/applications/DefaultBrowserPreference;->setEnabled(Z)V

    .line 44
    return-void

    .line 65
    .restart local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-virtual {p2, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    goto :goto_0

    .line 68
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-virtual {p2, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setSummary(I)V

    .line 69
    const-string/jumbo v5, "AppCommonUtils"

    const-string/jumbo v6, "Cannot set empty default Browser value!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 131
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 132
    :cond_0
    return-void

    .line 131
    :cond_1
    if-eqz p0, :cond_0

    .line 134
    const/4 v0, 0x1

    .line 136
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v1, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.action.MAIN"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    instance-of v5, p2, Lcom/android/settings/applications/DefaultHomePreference;

    if-eqz v5, :cond_5

    move-object v5, p2

    .line 140
    check-cast v5, Lcom/android/settings/applications/DefaultHomePreference;

    invoke-virtual {v5}, Lcom/android/settings/applications/DefaultHomePreference;->refreshHomeOptions()V

    .line 150
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v3

    .line 151
    .local v3, "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 152
    const/4 v0, 0x0

    .line 159
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v2

    .line 161
    :goto_2
    const/4 v5, 0x0

    invoke-virtual {p1, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    if-eqz v2, :cond_4

    .line 162
    :cond_3
    const/4 v0, 0x0

    .line 165
    :cond_4
    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 130
    return-void

    .line 142
    .end local v3    # "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    :cond_5
    const/high16 v5, 0x10000

    invoke-virtual {p1, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 143
    .local v4, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_2

    .line 144
    invoke-virtual {v4, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 154
    .end local v4    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "kioskMode":Lcom/samsung/android/knox/kiosk/KioskMode;
    :cond_6
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 159
    :cond_8
    const/4 v2, 0x0

    .local v2, "isDesktopEnabled":Z
    goto :goto_2
.end method

.method public static updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "preference"    # Lcom/android/settings/applications/DefaultPhonePreference;

    .prologue
    .line 81
    if-nez p2, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultPhonePreference;->loadDialerApps()V

    .line 85
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultPhonePreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 88
    .local v0, "appName":Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.DIAL"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "tel:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 91
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultPhonePreference;->setEnabled(Z)V

    .line 93
    const/high16 v3, 0x10000

    .line 92
    invoke-virtual {p1, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 94
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 99
    invoke-virtual {p2, v0}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    :goto_0
    return-void

    .line 101
    :cond_2
    const v3, 0x7f0b0166

    invoke-virtual {p2, v3}, Lcom/android/settings/applications/DefaultPhonePreference;->setSummary(I)V

    .line 102
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
    .line 108
    if-nez p2, :cond_0

    return-void

    .line 110
    :cond_0
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultSmsPreference;->loadSmsApps()V

    .line 112
    invoke-virtual {p2}, Lcom/android/settings/applications/DefaultSmsPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    .line 113
    .local v0, "appName":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {p2, v0}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 121
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    invoke-static {p0, v1}, Lcom/samsung/android/settings/applications/AppCommonUtils;->hasDefaultAppByMDM(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setEnabled(Z)V

    .line 107
    return-void

    .line 116
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const v2, 0x7f0b0166

    invoke-virtual {p2, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setSummary(I)V

    goto :goto_0

    .line 124
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method
