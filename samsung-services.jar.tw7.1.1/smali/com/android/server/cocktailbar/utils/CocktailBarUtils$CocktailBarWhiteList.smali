.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarWhiteList"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z
    .locals 1
    .param p0, "providerInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .param p1, "userId"    # I

    .prologue
    .line 45
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isCategoryOfWhiteList(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 48
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private static isCategoryOfWhiteList(I)Z
    .locals 1
    .param p0, "category"    # I

    .prologue
    .line 52
    sparse-switch p0, :sswitch_data_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 55
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSystemApplication(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 62
    .local v2, "packageManager":Landroid/content/pm/IPackageManager;
    if-nez v2, :cond_0

    .line 63
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Can not get PM"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return v6

    .line 68
    :cond_0
    const/16 v4, 0x40

    .line 67
    :try_start_0
    invoke-interface {v2, p0, v4, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 69
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_1

    .line 70
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x81

    if-eqz v4, :cond_1

    .line 71
    const/4 v4, 0x1

    return v4

    .line 73
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "isSystemApplication: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 74
    .local v0, "debugString":Ljava/lang/StringBuffer;
    if-nez v3, :cond_2

    .line 75
    const-string v4, " is no signature app"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :goto_0
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->-get0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return v6

    .line 77
    :cond_2
    const-string v4, " f="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "debugString":Ljava/lang/StringBuffer;
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 84
    return v6
.end method
