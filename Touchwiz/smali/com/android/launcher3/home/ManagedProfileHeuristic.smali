.class public Lcom/android/launcher3/home/ManagedProfileHeuristic;
.super Ljava/lang/Object;
.source "ManagedProfileHeuristic.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManagedProfileHeuristic"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHomescreenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/android/launcher3/LauncherModel;

.field private final mPackageSetKey:Ljava/lang/String;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

.field private final mUserSerial:J

.field private mWorkFolderApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 78
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    .line 80
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    .line 81
    .local v0, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getInstalledPackagesPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    .line 86
    return-void
.end method

.method private static addAllUserKeys(JLjava/util/HashSet;)V
    .locals 2
    .param p0, "userSerial"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, "keysOut":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "installed_packages_for_user_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home_only_user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user_folder_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 373
    return-void
.end method

.method private checkAllAppsForWorkFolder(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 142
    .local v10, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v10}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    .line 144
    const/4 v8, 0x0

    .line 145
    .local v8, "newPackageAdded":Z
    const-string v0, "ManagedProfileHeuristic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAllAppsForWorkFolder : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 147
    .local v7, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 148
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v8, 0x1

    .line 152
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 153
    .local v2, "columns":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent LIKE ? AND itemType=0 AND hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    .line 155
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "profileId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v12, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    .line 156
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 158
    .local v4, "selectionArg":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 161
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    .line 163
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    const-string v0, "ManagedProfileHeuristic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "work app was hided - "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_2
    const-string v0, "ManagedProfileHeuristic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add work folder app : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v7, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 168
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 176
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v7    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_4

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    :cond_4
    return-void
.end method

.method private finalizeAdditions(Z)V
    .locals 4
    .param p1, "addHomeScreenShortcuts"    # Z

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeWorkFolder()V

    .line 275
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 278
    :cond_0
    return-void
.end method

.method private finalizeWorkFolder()V
    .locals 14

    .prologue
    .line 189
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 253
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    new-instance v10, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;

    invoke-direct {v10, p0}, Lcom/android/launcher3/home/ManagedProfileHeuristic$1;-><init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;)V

    invoke-static {v9, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 201
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, "folderIdKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 203
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    const-wide/16 v10, 0x0

    invoke-interface {v9, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 204
    .local v2, "folderId":J
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/HomeLoader;->findFolderById(Ljava/lang/Long;)Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    .line 206
    .local v8, "workFolder":Lcom/android/launcher3/folder/FolderInfo;
    if-eqz v8, :cond_1

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/FolderInfo;->hasOption(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 208
    :cond_1
    const-string v9, "ManagedProfileHeuristic"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "work folder does not exist : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 212
    :cond_2
    iget-object v9, v8, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-direct {p0, v2, v3, v9}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    .line 214
    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 216
    .local v7, "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v9, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v9}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    new-instance v10, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;

    invoke-direct {v10, p0, v7, v8}, Lcom/android/launcher3/home/ManagedProfileHeuristic$2;-><init>(Lcom/android/launcher3/home/ManagedProfileHeuristic;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 226
    .end local v2    # "folderId":J
    .end local v7    # "shortcuts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    .end local v8    # "workFolder":Lcom/android/launcher3/folder/FolderInfo;
    :cond_3
    const-string v9, "ManagedProfileHeuristic"

    const-string v10, "create work folder"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v8, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v8}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 229
    .restart local v8    # "workFolder":Lcom/android/launcher3/folder/FolderInfo;
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const v10, 0x7f0900ed

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v8, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 230
    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher3/folder/FolderInfo;->setOption(IZLandroid/content/Context;)V

    .line 232
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 233
    const-string v9, "ManagedProfileHeuristic"

    const-string v10, "only 1 work folder app. need check other app"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v6

    .line 235
    .local v6, "launcherapps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    if-eqz v6, :cond_4

    .line 236
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v6, v9, v10}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 237
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->checkAllAppsForWorkFolder(Ljava/util/List;)V

    .line 241
    .end local v0    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v6    # "launcherapps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    :cond_4
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 242
    .local v4, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {v8, v4}, Lcom/android/launcher3/folder/FolderInfo;->add(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_1

    .line 246
    .end local v4    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    const/4 v9, 0x1

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v5, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v5, v11}, Lcom/android/launcher3/home/HomeLoader;->addAndBindAddedWorkspaceItems(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    .line 249
    iget-object v9, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-wide v12, v8, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    iget-wide v10, v8, Lcom/android/launcher3/folder/FolderInfo;->id:J

    const/4 v9, 0x0

    invoke-direct {p0, v10, v11, v9}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->saveWorkFolderShortcuts(JI)V

    goto/16 :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/home/ManagedProfileHeuristic;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 57
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {p0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/util/DualAppUtils;->isDualAppId(Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/ManagedProfileHeuristic;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 61
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getInstalledPackagesPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_installed_packages_for_user_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "installed_packages_for_user_"

    goto :goto_0
.end method

.method private getUserApps(Ljava/util/HashSet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 337
    .local p1, "outExistingApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 338
    .local v0, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 339
    const/4 v1, 0x0

    .line 342
    :goto_0
    return v1

    .line 341
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 342
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getUserFolderIdPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_user_folder_"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_folder_"

    goto :goto_0
.end method

.method static markExistingUsersForNoFolderCreation(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    .line 381
    .local v4, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    .line 383
    .local v1, "myUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/4 v2, 0x0

    .line 384
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 385
    .local v3, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 389
    if-nez v2, :cond_1

    .line 390
    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 394
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserFolderIdPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "folderIdKey":Ljava/lang/String;
    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 396
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-wide/16 v8, -0x1

    invoke-interface {v6, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 399
    .end local v0    # "folderIdKey":Ljava/lang/String;
    .end local v3    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    return-void
.end method

.method private markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->fromActivityInfo(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Landroid/content/Context;)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public static processAllUsers(Ljava/util/List;Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-static {p1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v4

    .line 351
    .local v4, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v5, "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 353
    .local v3, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v4, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v8

    invoke-static {v8, v9, v5}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->addAllUserKeys(JLjava/util/HashSet;)V

    goto :goto_0

    .line 356
    .end local v3    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_0
    const-string v6, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 359
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 360
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 361
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 362
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 365
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    return-void
.end method

.method private saveWorkFolderShortcuts(JI)V
    .locals 7
    .param p1, "workFolderId"    # J
    .param p3, "startingRank"    # I

    .prologue
    const/4 v6, 0x0

    .line 259
    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 260
    .local v0, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    add-int/lit8 v1, p3, 0x1

    .end local p3    # "startingRank":I
    .local v1, "startingRank":I
    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 261
    iput-wide p1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 262
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 263
    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 264
    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 265
    iget-object v2, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mModel:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeLoader;->getUpdater()Lcom/android/launcher3/common/model/DataUpdater;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesUpdater;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->addItem(Lcom/android/launcher3/common/base/item/ItemInfo;)J

    move p3, v1

    .line 266
    .end local v1    # "startingRank":I
    .restart local p3    # "startingRank":I
    goto :goto_0

    .line 267
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public processPackageAdd([Ljava/lang/String;)V
    .locals 10
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    .line 285
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 287
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 288
    .local v4, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v5

    .line 290
    .local v5, "userAppsExisted":Z
    const/4 v2, 0x0

    .line 291
    .local v2, "newPackageAdded":Z
    iget-object v6, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v1

    .line 293
    .local v1, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    array-length v9, p1

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v3, p1, v7

    .line 294
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 295
    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 296
    const/4 v2, 0x1

    .line 298
    iget-object v6, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUser:Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 299
    invoke-virtual {v1, v3, v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 301
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)V

    .line 293
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    :cond_0
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_0

    .line 306
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 307
    iget-object v6, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 308
    invoke-direct {p0, v5}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 310
    :cond_2
    return-void
.end method

.method public processPackageRemoved([Ljava/lang/String;)V
    .locals 6
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 316
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 317
    .local v2, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0, v2}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "packageRemoved":Z
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p1, v3

    .line 321
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 322
    const/4 v1, 0x1

    .line 320
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 326
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 327
    iget-object v3, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 329
    :cond_2
    return-void
.end method

.method public processUserApps(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mHomescreenApps:Ljava/util/ArrayList;

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mWorkFolderApps:Ljava/util/ArrayList;

    .line 96
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 97
    .local v12, "packageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->getUserApps(Ljava/util/HashSet;)Z

    move-result v13

    .line 99
    .local v13, "userAppsExisted":Z
    const/4 v10, 0x0

    .line 101
    .local v10, "newPackageAdded":Z
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 102
    .local v9, "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 103
    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 104
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    const/4 v10, 0x1

    .line 107
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    .line 108
    .local v4, "columns":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent LIKE ? AND itemType=0 AND hidden="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    .line 110
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "profileId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mUserSerial:J

    move-wide/from16 v16, v0

    .line 111
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v7, 0x25

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 113
    .local v6, "selectionArg":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 116
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 118
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 119
    const-string v2, "ManagedProfileHeuristic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "work app was hided - "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 127
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->markForAddition(Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;)V

    goto/16 :goto_0

    .line 123
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 131
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "info":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_3
    if-eqz v10, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ManagedProfileHeuristic;->mPackageSetKey:Ljava/lang/String;

    invoke-interface {v2, v3, v12}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->finalizeAdditions(Z)V

    .line 138
    :cond_4
    return-void
.end method
