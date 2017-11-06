.class public Lcom/samsung/android/app/music/common/util/PackageLauncher;
.super Ljava/lang/Object;
.source "PackageLauncher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PACKAGE_NAME_GOOGLE_PLAY:Ljava/lang/String; = "com.android.vending"

.field public static final PACKAGE_NAME_SAMSUNG_ACCOUNT:Ljava/lang/String; = "com.osp.app.signin"

.field public static final PACKAGE_NAME_SAMSUNG_APPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field public static final PACKAGE_NAME_SAMSUNG_MUSIC:Ljava/lang/String; = "com.samsung.music"

.field public static final PACKAGE_NAME_SAMSUNG_PAY:Ljava/lang/String; = "com.samsung.android.spay"

.field public static final PACKAGE_NAME_SAMSUNG_PAY_MINI:Ljava/lang/String; = "com.samsung.android.spaylite"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/common/util/PackageLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSamsungAccountIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "client_id"

    const-string v2, "12yndwlwd1"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "client_secret"

    const-string v2, "C548D30428E8D901492340A08A969617"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v1, "mypackage"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    return-object v0
.end method

.method public static installApplication(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;
    .param p3, "referrer"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launchSamsungApps(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 191
    :cond_0
    const-string v0, "com.android.vending"

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launchGooglePlay(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDisabledApps(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 167
    .local v0, "disabled":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 167
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 173
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "is DisabledApps"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isInstalledPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 178
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    .line 179
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v1, 0x1

    .line 183
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v1, 0x1

    .line 200
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static launch(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    .prologue
    .line 122
    const/4 v6, 0x0

    .line 124
    .local v6, "isLaunched":Z
    if-eqz p0, :cond_1

    .line 125
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 126
    const/4 v6, 0x1

    .line 160
    :cond_0
    :goto_0
    return v6

    .line 128
    :cond_1
    sget-object v9, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v10, "launch : context is null!"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const/4 v6, 0x0

    .line 132
    sget-object v9, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v10, "launch : ActivityNotFoundException occurred"

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 136
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 138
    .local v4, "enabled":Z
    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {v7, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 140
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_0

    .line 141
    iget-boolean v4, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 142
    if-nez v4, :cond_2

    .line 143
    instance-of v9, p0, Landroid/app/Activity;

    if-eqz v9, :cond_0

    .line 144
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 145
    .local v1, "activity":Landroid/app/Activity;
    new-instance v8, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-direct {v8, v1, p1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    .local v8, "saDisabledDialog":Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;
    invoke-virtual {v8, p3}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->setOnDialogStateListener(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)V

    .line 148
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 149
    sget-object v9, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v10, "launch : The package is disabled."

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 156
    .end local v1    # "activity":Landroid/app/Activity;
    .end local v5    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "saDisabledDialog":Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;
    :catch_1
    move-exception v3

    .line 157
    .local v3, "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v9, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v10, "launch : The package does not exist "

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v3    # "e2":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    :try_start_2
    sget-object v9, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v10, "launch : No activity but package is enabled."

    invoke-static {v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static launchGooglePlay(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;
    .param p3, "referrer"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    const-string v2, "&referrer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/common/util/PackageLauncher;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchGooglePlay : launchGooglePlay url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "goToMarket":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    const-string v2, "com.android.vending"

    invoke-static {p0, v2, v0, p2}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    move-result v2

    return v2
.end method

.method public static launchSamsungAccount(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->getSamsungAccountIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v2, 0x1

    .line 100
    :goto_0
    return v2

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static launchSamsungApps(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "goToSamsungApps":Landroid/content/Intent;
    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v1, "directcall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    const-string v1, "GUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    const-string v1, "com.sec.android.app.samsungapps"

    invoke-static {p0, v1, v0, p2}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    move-result v1

    return v1
.end method

.method public static launchSamsungGearApps(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceModel"    # Ljava/lang/String;
    .param p3, "gearModel"    # Ljava/lang/String;
    .param p4, "gearOs"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "goToSamsungApps":Landroid/content/Intent;
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "samsungapps://ProductDetail/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 108
    const-string v1, "fakeModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "GOSVERSION"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const v1, 0x14000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    const-string v1, "com.sec.android.app.samsungapps"

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/samsung/android/app/music/common/util/PackageLauncher;->launch(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    move-result v1

    return v1
.end method
