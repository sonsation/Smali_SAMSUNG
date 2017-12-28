.class public Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "LauncherBackupAgentHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final LAUNCHER_DATA_PREFIX:Ljava/lang/String; = "L"

.field private static final TAG:Ljava/lang/String; = "LauncherBackupAgentHelper"

.field static final VERBOSE:Z

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field private mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static dataChanged(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    .line 57
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 58
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    .line 65
    new-instance v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    .line 66
    const-string v0, "L"

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 67
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 73
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    .line 74
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeChangedComponentPref()V

    .line 78
    :cond_0
    const/4 v8, 0x0

    .line 80
    .local v8, "hasData":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 85
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    if-eqz v0, :cond_3

    .line 95
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    .line 96
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->convertShortcutsToLauncherActivities()V

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->switchDb:Z

    if-eqz v0, :cond_2

    .line 98
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Switch DB after restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    .line 106
    :cond_2
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v7

    .line 90
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Restore failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    const/4 v8, 0x0

    goto :goto_0

    .line 103
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    .line 104
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    goto :goto_1
.end method
