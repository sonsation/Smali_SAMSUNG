.class public Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# static fields
.field private static final AOD_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.aodservice"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLockScreenDefaultValue(Landroid/content/SharedPreferences;Landroid/content/Context;)Z
    .locals 6
    .param p0, "preferences"    # Landroid/content/SharedPreferences;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 32
    const-string/jumbo v4, "support_aod"

    .line 33
    invoke-interface {p0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 34
    .local v0, "check":I
    if-eq v0, v5, :cond_1

    .line 35
    if-nez v0, :cond_0

    .line 46
    .local v1, "defaultValue":Z
    :goto_0
    return v1

    .end local v1    # "defaultValue":Z
    :cond_0
    move v1, v3

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/PackageManagerCompat;->checkSupportAodService(Landroid/content/Context;)Z

    move-result v2

    .line 38
    .local v2, "isExist":Z
    if-eqz v2, :cond_2

    .line 39
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->saveSupportAod(I)V

    .line 40
    const/4 v1, 0x0

    .restart local v1    # "defaultValue":Z
    goto :goto_0

    .line 42
    .end local v1    # "defaultValue":Z
    :cond_2
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->saveSupportAod(I)V

    .line 43
    const/4 v1, 0x1

    .restart local v1    # "defaultValue":Z
    goto :goto_0
.end method

.method private static checkSupportAodService(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 18
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v3

    .line 22
    :cond_1
    :try_start_0
    const-string v4, "com.samsung.android.app.aodservice"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 23
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 24
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
