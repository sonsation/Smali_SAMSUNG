.class public Lcom/samsung/android/app/music/common/settings/SettingsActivity;
.super Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;
    }
.end annotation


# instance fields
.field private mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/settings/SettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/settings/SettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->updateContentView(Z)V

    return-void
.end method

.method private setListBackground(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 175
    const v1, 0x7f12015e

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .local v0, "list":Landroid/view/View;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110275

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 182
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02020d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setPaddingContentView(I)V
    .locals 4
    .param p1, "paddingHorizontal"    # I

    .prologue
    const/4 v3, 0x0

    .line 164
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0168

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 168
    :cond_0
    const v1, 0x7f12015d

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "contentRoot":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {v0, p1, v3, p1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 172
    :cond_1
    return-void
.end method

.method private updateContentView(Z)V
    .locals 6
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 142
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-nez v5, :cond_0

    .line 161
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 147
    .local v4, "res":Landroid/content/res/Resources;
    const/4 v1, -0x1

    .line 148
    .local v1, "paddingHorizontal":I
    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/UiUtils;->isLandscape(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p1, :cond_1

    .line 149
    iget-object v5, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->getRectInfo()Landroid/graphics/Rect;

    move-result-object v2

    .line 150
    .local v2, "rectInfo":Landroid/graphics/Rect;
    if-eqz v2, :cond_1

    .line 151
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 152
    .local v3, "rectWidth":I
    const v5, 0x7f0d006b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 153
    .local v0, "defaultWidth":I
    if-ge v0, v3, :cond_2

    .line 154
    sub-int v5, v3, v0

    div-int/lit8 v1, v5, 0x2

    .line 160
    .end local v0    # "defaultWidth":I
    .end local v2    # "rectInfo":Landroid/graphics/Rect;
    .end local v3    # "rectWidth":I
    :cond_1
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->setPaddingContentView(I)V

    goto :goto_0

    .line 156
    .restart local v0    # "defaultWidth":I
    .restart local v2    # "rectInfo":Landroid/graphics/Rect;
    .restart local v3    # "rectWidth":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public enableExplicit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 128
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    const-string v1, "explicit_option"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putBoolean(Ljava/lang/String;Z)V

    .line 129
    const-string v0, "explicit"

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->syncSettings(Ljava/lang/String;I)V

    .line 131
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 98
    const/16 v5, 0x7531

    if-ne p1, v5, :cond_2

    .line 99
    const-string v5, "SettingsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onActivityResult : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const/16 v5, 0x3e9

    if-ne p2, v5, :cond_2

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->enableExplicit()V

    .line 103
    const/4 v3, 0x0

    .line 104
    .local v3, "isCertificated":Z
    if-eqz p3, :cond_0

    .line 105
    const-string v5, "N"

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p3, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 109
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v4

    .line 110
    .local v4, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v4, :cond_1

    .line 111
    if-eqz v3, :cond_3

    const-string v5, "1"

    :goto_0
    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/common/model/UserInfo;->setAdultCertifyYn(Ljava/lang/String;)V

    .line 115
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 116
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    .line 117
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 118
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "curDate":Ljava/lang/String;
    const-string v5, "com.samsung.radio.certified.date"

    invoke-static {p0, v5, v0}, Lcom/samsung/android/app/music/common/preferences/Pref;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v5

    const-string v6, "1"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->updateUserInfo(Ljava/lang/String;Lcom/samsung/android/app/music/common/model/PushInfo;)I

    .line 124
    .end local v0    # "curDate":Ljava/lang/String;
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "isCertificated":Z
    .end local v4    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 125
    return-void

    .line 111
    .restart local v3    # "isCertificated":Z
    .restart local v4    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_3
    const-string v5, "0"

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->isMultiWindow()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->updateContentView(Z)V

    .line 93
    :goto_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->setListBackground(I)V

    .line 94
    return-void

    .line 91
    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->setPaddingContentView(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v2, 0x7f040042

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->setContentView(I)V

    .line 49
    const v2, 0x7f0a007a

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/samsung/android/app/music/common/util/AppNameUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/TabUtils;->updateTabPreferences(Landroid/content/Context;)V

    .line 53
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v2

    const-string v3, "401"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "MusicSettings"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 57
    .local v0, "fg":Landroid/app/Fragment;
    if-nez v0, :cond_1

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/common/settings/SettingsFragment;

    .end local v0    # "fg":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/samsung/android/app/music/common/settings/SettingsFragment;-><init>()V

    .line 59
    .restart local v0    # "fg":Landroid/app/Fragment;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const v3, 0x7f12015e

    const-string v4, "MusicSettings"

    invoke-virtual {v2, v3, v0, v4}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 62
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->getUiType(Landroid/content/Context;)I

    move-result v1

    .line 63
    .local v1, "uiType":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-gt v2, v3, :cond_2

    if-ne v1, v6, :cond_2

    .line 64
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    new-instance v3, Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity$MultiWindowChangeListener;-><init>(Lcom/samsung/android/app/music/common/settings/SettingsActivity;)V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat$OnMultiWindowChangeListener;)V

    iput-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->isMultiWindow()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->updateContentView(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->setListBackground(I)V

    .line 69
    :cond_2
    sget-boolean v2, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v2, :cond_3

    .line 70
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->bindService(Landroid/content/ServiceConnection;)Z

    .line 72
    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/common/settings/SettingsActivity;->mMultiWindowManager:Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/multiwindow/MultiWindowSdkCompat;->release()V

    .line 79
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_1

    .line 80
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 82
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/music/common/activity/BaseServiceActivity;->onDestroy()V

    .line 83
    return-void
.end method

.method protected syncSettings(Ljava/lang/String;I)V
    .locals 5
    .param p1, "mapKey"    # Ljava/lang/String;
    .param p2, "settingValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 134
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 135
    .local v1, "settingMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "mapValue":Ljava/lang/String;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v1, v4, v3}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->saveSettings(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/util/HashMap;Ljava/util/ArrayList;Z)I

    .line 139
    return-void
.end method
