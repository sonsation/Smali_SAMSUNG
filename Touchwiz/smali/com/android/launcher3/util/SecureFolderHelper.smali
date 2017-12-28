.class public final Lcom/android/launcher3/util/SecureFolderHelper;
.super Ljava/lang/Object;
.source "SecureFolderHelper.java"


# static fields
.field private static final INTENT_INSTALL_APK:Ljava/lang/String; = "knox.lwc.action.INSTALL_APK"

.field private static final PERMISSION_INSTALL_APK:Ljava/lang/String; = "com.sec.knox.APK_INSTALL_LWC"

.field public static final SECURE_FOLDER_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.knox.securefolder"

.field private static final TAG:Ljava/lang/String; = "SecureFolderHelper"

.field private static sSecureFolderId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/SecureFolderHelper;->sSecureFolderId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAppToSecureFolder(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v0, "component":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 87
    const/4 v2, 0x1

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 88
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-static {p0, v1}, Lcom/android/launcher3/util/SecureFolderHelper;->sendBroadcastAsUser(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 91
    return-void
.end method

.method public static addAppToSecureFolder(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "appsViewList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v3, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-static {p0}, Lcom/android/launcher3/util/SecureFolderHelper;->getSecureFolderId(Landroid/content/Context;)I

    move-result v6

    sput v6, Lcom/android/launcher3/util/SecureFolderHelper;->sSecureFolderId:I

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 98
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 99
    .local v2, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    iget-object v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    .line 100
    .local v0, "cn":Landroid/content/ComponentName;
    if-nez v0, :cond_1

    .line 101
    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v2    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 104
    :cond_1
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "packageName":Ljava/lang/String;
    sget v7, Lcom/android/launcher3/util/SecureFolderHelper;->sSecureFolderId:I

    invoke-static {p0, v7, v4}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "component":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    const/4 v7, 0x1

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "component":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 116
    invoke-static {p0, v3}, Lcom/android/launcher3/util/SecureFolderHelper;->sendBroadcastAsUser(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 118
    :cond_3
    return-void
.end method

.method private static canAddAppToSecureFolder(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "secureFolderId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 59
    const-string v1, "persona"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    .line 60
    .local v0, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static canAddAppToSecureFolder(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {p1}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {p0}, Lcom/android/launcher3/util/SecureFolderHelper;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/SecureFolderHelper;->sSecureFolderId:I

    .line 52
    sget v0, Lcom/android/launcher3/util/SecureFolderHelper;->sSecureFolderId:I

    invoke-static {p0, v0, p2}, Lcom/android/launcher3/util/SecureFolderHelper;->canAddAppToSecureFolder(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getSecureFolderId(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .prologue
    .line 65
    const-string v5, "persona"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 66
    .local v3, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    if-nez v3, :cond_1

    .line 67
    const/4 v4, 0x0

    .line 80
    :cond_0
    return v4

    .line 70
    :cond_1
    invoke-virtual {v3, p0}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    .line 71
    .local v2, "knoxMenuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v4, 0x0

    .line 72
    .local v4, "userId":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 73
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Bundle;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 75
    .local v0, "item":Landroid/os/Bundle;
    const-string v5, "com.sec.knox.moveto.containerType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_2

    .line 76
    const-string v5, "com.sec.knox.moveto.containerId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public static getSecureFolderTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 145
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const-string v3, "com.samsung.knox.securefolder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 146
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SecureFolderHelper"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isSecureFolderExist(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, "ret":Z
    :try_start_0
    const-string v4, "isSecureFolderExist"

    invoke-static {p0, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxInfoForApp(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "isSecureFolderExist"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "isSecureFolderExist":Ljava/lang/String;
    const-string v4, "true"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 138
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "isSecureFolderExist":Ljava/lang/String;
    :goto_0
    return v3

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/NoClassDefFoundError;
    const-string v4, "SecureFolderHelper"

    invoke-virtual {v1}, Ljava/lang/NoClassDefFoundError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static sendBroadcastAsUser(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "knox.lwc.action.INSTALL_APK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "from_app"

    const-string v2, "Launcher"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v1, "userid"

    sget v2, Lcom/android/launcher3/util/SecureFolderHelper;->sSecureFolderId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    const-string v1, "packages"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    sget-object v1, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const-string v2, "com.sec.knox.APK_INSTALL_LWC"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 127
    return-void
.end method
