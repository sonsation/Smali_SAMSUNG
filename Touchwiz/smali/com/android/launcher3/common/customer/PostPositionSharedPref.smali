.class public Lcom/android/launcher3/common/customer/PostPositionSharedPref;
.super Ljava/lang/Object;
.source "PostPositionSharedPref.java"


# static fields
.field private static final DISABLED:I = -0x1

.field public static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs.PostPosition"

.field private static final PREFS_APPS:Ljava/lang/String; = "Apps_"

.field private static final PREFS_AUTO_FOLDER_NAME:Ljava/lang/String; = "AutoFolderingFolderName"

.field public static final PREFS_FOLDER_ID:Ljava/lang/String; = "FolderId"

.field private static final PREFS_FOLDER_NAME:Ljava/lang/String; = "FolderName"

.field public static final PREFS_FOLDER_READY_ID:Ljava/lang/String; = "FolderReadyId"

.field private static final PREFS_HOME:Ljava/lang/String; = "Home_"

.field private static final PREFS_INSTALLER_PACKAGE:Ljava/lang/String; = "Installer_Package"

.field private static final PREFS_OMC_PATH:Ljava/lang/String; = "OMC_PATH"

.field public static final PREFS_POST_POSITION_ENABLED:Ljava/lang/String; = "PostPostionEnabled"

.field public static final PREFS_PRELOADED_FOLDER_ID:Ljava/lang/String; = "PreloadedFolderId"

.field private static final PREFS_PRELOADED_FOLDER_NAME:Ljava/lang/String; = "PreladedFolderName"

.field public static final REMOVED:J = 0x1869fL

.field private static final TAG:Ljava/lang/String; = "PostPositionSharedPref"


# instance fields
.field private mContainer:I

.field private final mContext:Landroid/content/Context;

.field private mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    .line 68
    return-void
.end method

.method private getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "isReadyId"    # Z

    .prologue
    .line 153
    if-eqz p2, :cond_0

    const-string v0, "FolderReadyId"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "FolderId"

    goto :goto_0
.end method


# virtual methods
.method clearRemovedFolderInfo()V
    .locals 8

    .prologue
    .line 215
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 217
    .local v2, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 218
    .local v1, "key":Ljava/lang/String;
    const-string v4, "FolderId"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-wide/32 v6, 0x1869f

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 225
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getContainer()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    return v0
.end method

.method public getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "suffix"    # Ljava/lang/String;

    .prologue
    const/16 v2, -0x64

    .line 89
    if-nez p1, :cond_1

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    if-ne v0, v2, :cond_0

    const-string v0, "Home_"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    :goto_1
    return-object v0

    .line 90
    :cond_0
    const-string v0, "Apps_"

    goto :goto_0

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    if-ne v0, v2, :cond_3

    const-string v0, "Home_"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "_"

    goto :goto_2

    :cond_3
    const-string v0, "Apps_"

    goto :goto_3
.end method

.method public getFolderId(Ljava/lang/String;Z)J
    .locals 4
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "isReadyId"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFolderIdList()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 268
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 270
    .local v0, "idList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 271
    .local v2, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 272
    .local v1, "key":Ljava/lang/String;
    const-string v3, "FolderId"

    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "PreloadedFolderId"

    .line 273
    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "FolderReadyId"

    .line 274
    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 275
    :cond_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 279
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getFolderName(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderName"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFolderNameById(J)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # J

    .prologue
    const/4 v6, 0x0

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, "folderName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 255
    .local v2, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 256
    .local v1, "key":Ljava/lang/String;
    const-string v4, "FolderId"

    invoke-virtual {p0, v6, v4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "PreloadedFolderId"

    .line 257
    invoke-virtual {p0, v6, v4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    :cond_1
    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 264
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method getOMCPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 198
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "OMC_PATH"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "omc_path":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p0}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeOMCPath()V

    .line 203
    :cond_0
    return-object v0
.end method

.method getPrefsAppsAutoFolderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Apps_AutoFolderingFolderName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrefsAppsInstallerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Apps_Installer_Package"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrefsHomeAutoFolderName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Home_AutoFolderingFolderName"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPrefsHomeInstallerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "Home_Installer_Package"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadedFolderId(Ljava/lang/String;)J
    .locals 4
    .param p1, "foldername"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PreloadedFolderId"

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPreloadedFolderName(J)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreladedFolderName"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()J
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "PostPostionEnabled"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeFolderId(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "isReadyId"    # Z

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 182
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 185
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void
.end method

.method removeItemsInfo(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 229
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 230
    .local v3, "keyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 231
    .local v2, "key":Ljava/lang/String;
    const-string v5, "FolderReadyId"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "PreloadedFolderId"

    .line 232
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "FolderId"

    .line 233
    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    :cond_1
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 241
    :cond_2
    const-string v5, "FolderName"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 242
    const-string v5, "_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 243
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 244
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 249
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 191
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 192
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 194
    const-string v1, "PostPositionSharedPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public removePreloadedFolderId(Ljava/lang/String;)V
    .locals 5
    .param p1, "foldername"    # Ljava/lang/String;

    .prologue
    .line 143
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 144
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PreloadedFolderId"

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "pref_key":Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreloadedFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method public setContainer(I)V
    .locals 0
    .param p1, "container"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    .line 72
    return-void
.end method

.method public setEnabled(Z)V
    .locals 6
    .param p1, "value"    # Z

    .prologue
    .line 79
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 80
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PostPostionEnabled"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    int-to-long v4, v1

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 82
    return-void

    .line 80
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public writeAutoFolderingInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 118
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, ""

    const-string v2, "AutoFolderingFolderName"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v1, ""

    const-string v2, "Installer_Package"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    const-string v1, "PostPositionSharedPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeAutoFolderingInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public writeFolderId(Ljava/lang/String;JZ)V
    .locals 6
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "isReadyId"    # Z

    .prologue
    .line 165
    invoke-direct {p0, p1, p4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getFolderKey(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 168
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    if-nez p4, :cond_0

    const-wide/32 v2, 0x1869f

    cmp-long v2, p2, v2

    if-eqz v2, :cond_0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FolderName"

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    :cond_0
    const-string v2, "PostPositionSharedPref"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void
.end method

.method writeOMCPath()V
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 208
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "OMC_PATH"

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 211
    const-string v1, "PostPositionSharedPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeOMCPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public writePreloadedFolderId(Ljava/lang/String;J)V
    .locals 4
    .param p1, "foldername"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PreloadedFolderId"

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-wide/32 v2, 0x1869f

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreladedFolderName"

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainerKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 110
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 112
    const-string v1, "PostPositionSharedPref"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writePreloadedFolderId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->mContainer:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method
