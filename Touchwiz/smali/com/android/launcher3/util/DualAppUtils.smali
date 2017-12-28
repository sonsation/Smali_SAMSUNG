.class public final Lcom/android/launcher3/util/DualAppUtils;
.super Ljava/lang/Object;
.source "DualAppUtils.java"


# static fields
.field private static final DUAL_APP_CREATE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent.CreateDualIM"

.field public static final DUAL_APP_DAAGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent"

.field private static final DUAL_APP_REMOVE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.da.daagent.RemoveDualIM"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final TAG:Ljava/lang/String; = "DualAppUtils"

.field private static final USER_ID:Ljava/lang/String; = "userId"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canInstallDualApp(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {p0, p2}, Lcom/android/launcher3/util/DualAppUtils;->isPackageInDualAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 62
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 1
    .param p0, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static installDualApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.da.daagent"

    const-string v3, "com.samsung.android.da.daagent.CreateDualIM"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "DualAppUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch. intent ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 1
    .param p0, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 1
    .param p0, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 94
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static isPackageInDualAppList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/SemDualAppManager;->isWhitelistedPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static makeUserBadgedIcon(Landroid/content/Context;Landroid/graphics/Bitmap;ILandroid/os/UserHandle;)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .param p2, "iconSize"    # I
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {p1, p2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    .line 101
    .local v0, "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0, p3}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    invoke-static {v0, p0}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method public static supportDualApp(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    .line 46
    .local v0, "dualAppManager":Lcom/samsung/android/app/SemDualAppManager;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 52
    .end local v0    # "dualAppManager":Lcom/samsung/android/app/SemDualAppManager;
    :goto_0
    return v2

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "DualAppUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 78
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.da.daagent"

    const-string v4, "com.samsung.android.da.daagent.RemoveDualIM"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v3, "packageName"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v3, "userId"

    invoke-virtual {p2}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local p0    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 84
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    check-cast p0, Lcom/android/launcher3/Launcher;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    .line 86
    .local v2, "multiSelectMgr":Lcom/android/launcher3/common/multiselect/MultiSelectManager;
    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    .line 89
    :cond_0
    const-string v3, "DualAppUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to launch. intent ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
