.class Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;
    }
.end annotation


# static fields
.field private static final APPWIDGET_ID_INDEX:I = 0x4

.field private static final APPWIDGET_PROVIDER_INDEX:I = 0x3

.field private static final BACKUP_INVALID_VALUE:I = -0x1

.field private static final BACKUP_VERSION:I = 0x4

.field private static final CELLX_INDEX:I = 0x5

.field private static final CELLY_INDEX:I = 0x6

.field private static final CONTAINER_INDEX:I = 0x7

.field private static final DEBUG:Z = false

.field private static final FAVORITE_PROJECTION:[Ljava/lang/String;

.field private static final ICON_INDEX:I = 0x8

.field private static final ICON_PACKAGE_INDEX:I = 0x9

.field private static final ICON_RESOURCE_INDEX:I = 0xa

.field private static final ICON_TYPE_INDEX:I = 0xb

.field private static final ID_INDEX:I = 0x0

.field private static final ID_MODIFIED:I = 0x1

.field private static final INTENT_INDEX:I = 0x2

.field private static final ITEM_TYPE_INDEX:I = 0xc

.field private static final JOURNAL_KEY:Ljava/lang/String; = "#"

.field private static final MAX_ICONS_PER_PASS:I = 0xa

.field private static final MAX_JOURNAL_SIZE:I = 0xf4240

.field private static final MAX_WIDGETS_PER_PASS:I = 0x5

.field private static final RANK_INDEX:I = 0x12

.field private static final SCREEN_INDEX:I = 0xd

.field private static final SCREEN_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_RANK_INDEX:I = 0x2

.field private static final SPANX_INDEX:I = 0xe

.field private static final SPANY_INDEX:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LauncherBackupHelper"

.field private static final TITLE_INDEX:I = 0x10

.field private static final VERBOSE:Z


# instance fields
.field private mBackupDataWasUpdated:Z

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBuffer:[B

.field private final mContext:Landroid/content/Context;

.field private mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

.field private final mExistingKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mIsHomeOnly:Z

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBackupRestoreTime:J

.field private final mUserSerial:J

.field restoreSuccessful:Z

.field private restoredBackupVersion:I

.field switchDb:Z

.field private widgetSizes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "modified"

    aput-object v1, v0, v4

    const-string v1, "intent"

    aput-object v1, v0, v5

    const-string v1, "appWidgetProvider"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "container"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rank"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    .line 148
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "modified"

    aput-object v1, v0, v4

    const-string v1, "screenRank"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    .line 169
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    .line 172
    iput v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    .line 174
    iput-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    .line 180
    iput-object p1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 181
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    .line 183
    iput-boolean v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->switchDb:Z

    .line 186
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    .line 187
    .local v0, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mUserSerial:J

    .line 188
    return-void
.end method

.method private applyJournal(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V
    .locals 6
    .param p1, "journal"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    .prologue
    .line 198
    iget-wide v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    .line 199
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 200
    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v1, :cond_0

    .line 201
    iget-object v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 202
    .local v0, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v0    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_0
    iget v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    .line 206
    return-void
.end method

.method private backupFavorites(Landroid/app/backup/BackupDataOutput;Z)V
    .locals 14
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "isHomeOnlyData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 510
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    const-string v2, "homeOnly"

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 514
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 515
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 514
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 516
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 550
    :goto_1
    return-void

    .line 510
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v2, "home"

    goto :goto_0

    .line 521
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    .line 523
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    .line 524
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    .line 525
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 529
    :cond_2
    if-eqz p2, :cond_5

    const/4 v11, 0x5

    .line 531
    .local v11, "type":I
    :goto_2
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 532
    :cond_3
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 533
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 534
    .local v8, "id":J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 535
    .local v12, "updateTime":J
    invoke-direct {p0, v11, v8, v9}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v10

    .line 536
    .local v10, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-direct {p0, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    .line 540
    .local v6, "backupKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    .line 542
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packFavorite(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    move-result-object v2

    invoke-direct {p0, v10, v2, p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 548
    .end local v6    # "backupKey":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v12    # "updateTime":J
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 529
    .end local v11    # "type":I
    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    .line 548
    .restart local v11    # "type":I
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private backupIcons(Landroid/app/backup/BackupDataOutput;)V
    .locals 23
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 697
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 698
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v14, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 699
    .local v14, "dpi":I
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v22

    .line 700
    .local v22, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const/4 v11, 0x0

    .line 703
    .local v11, "backupUpIconCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(itemType=0 OR itemType=1) AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 705
    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 706
    .local v7, "where":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 708
    .local v13, "cursor":Landroid/database/Cursor;
    if-nez v13, :cond_0

    .line 760
    :goto_0
    return-void

    .line 714
    :cond_0
    const/4 v5, -0x1

    :try_start_0
    invoke-interface {v13, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 715
    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 716
    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 717
    .local v18, "id":J
    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 719
    .local v20, "intentDescription":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    .line 720
    .local v17, "intent":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 721
    .local v12, "cn":Landroid/content/ComponentName;
    const/16 v21, 0x0

    .line 722
    .local v21, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    const/4 v10, 0x0

    .line 723
    .local v10, "backupKey":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 724
    const/4 v5, 0x3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v21

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    .line 729
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 733
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 750
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :catch_0
    move-exception v15

    .line 751
    .local v15, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid URI on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 758
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .end local v18    # "id":J
    .end local v20    # "intentDescription":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    .line 727
    .restart local v10    # "backupKey":Ljava/lang/String;
    .restart local v12    # "cn":Landroid/content/ComponentName;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v18    # "id":J
    .restart local v20    # "intentDescription":Ljava/lang/String;
    .restart local v21    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_2
    :try_start_3
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty intent on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 752
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v21    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :catch_1
    move-exception v15

    .line 753
    .local v15, "e":Ljava/io/IOException;
    :try_start_4
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to save application icon for favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 734
    .end local v15    # "e":Ljava/io/IOException;
    .restart local v10    # "backupKey":Ljava/lang/String;
    .restart local v12    # "cn":Landroid/content/ComponentName;
    .restart local v17    # "intent":Landroid/content/Intent;
    .restart local v21    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_3
    if-eqz v10, :cond_1

    .line 736
    const/16 v5, 0xa

    if-ge v11, v5, :cond_4

    .line 738
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 739
    .local v16, "icon":Landroid/graphics/Bitmap;
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 740
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packIcon(ILandroid/graphics/Bitmap;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 741
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 747
    .end local v16    # "icon":Landroid/graphics/Bitmap;
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->dataChanged()V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 758
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v18    # "id":J
    .end local v20    # "intentDescription":Ljava/lang/String;
    .end local v21    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 7
    .param p1, "backupKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 925
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v1

    .line 926
    .local v1, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iget-wide v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 927
    const/4 v1, 0x0

    .line 928
    new-instance v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid key read from stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v2
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 931
    .end local v1    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    new-instance v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v2

    .line 933
    .end local v0    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_1
    move-exception v0

    .line 934
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v2

    .line 930
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    :cond_0
    return-object v1
.end method

.method private backupScreens(Landroid/app/backup/BackupDataOutput;Z)V
    .locals 14
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "isHomeOnlyData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 638
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p2, :cond_0

    const-string v2, "homeOnly"

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 640
    .local v1, "uri":Landroid/net/Uri;
    sget-object v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 641
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 665
    :goto_1
    return-void

    .line 638
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v2, "home"

    goto :goto_0

    .line 646
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz p2, :cond_4

    const/4 v11, 0x6

    .line 648
    .local v11, "type":I
    :goto_2
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 650
    :cond_2
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 651
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 652
    .local v8, "id":J
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 653
    .local v12, "updateTime":J
    invoke-direct {p0, v11, v8, v9}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v10

    .line 654
    .local v10, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-direct {p0, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, "backupKey":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v2, v12, v2

    if-ltz v2, :cond_2

    .line 657
    :cond_3
    invoke-direct {p0, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packScreen(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    move-result-object v2

    invoke-direct {p0, v10, v2, p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 663
    .end local v6    # "backupKey":Ljava/lang/String;
    .end local v8    # "id":J
    .end local v10    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v12    # "updateTime":J
    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    .line 646
    .end local v11    # "type":I
    :cond_4
    const/4 v11, 0x2

    goto :goto_2

    .line 663
    .restart local v11    # "type":I
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private backupWidgets(Landroid/app/backup/BackupDataOutput;Z)V
    .locals 21
    .param p1, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p2, "isHomeOnlyData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 799
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 800
    .local v4, "cr":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v13, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 801
    .local v13, "dpi":I
    const/4 v11, 0x0

    .line 803
    .local v11, "backupWidgetCount":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "itemType=4 AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 804
    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 805
    .local v7, "where":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v6, "homeOnly"

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v6, v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    .line 807
    .local v5, "uri":Landroid/net/Uri;
    sget-object v6, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 808
    .local v12, "cursor":Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 853
    :goto_1
    return-void

    .line 805
    .end local v5    # "uri":Landroid/net/Uri;
    .end local v12    # "cursor":Landroid/database/Cursor;
    :cond_0
    const-string v6, "home"

    goto :goto_0

    .line 813
    .restart local v5    # "uri":Landroid/net/Uri;
    .restart local v12    # "cursor":Landroid/database/Cursor;
    :cond_1
    if-eqz p2, :cond_3

    const/16 v19, 0x7

    .line 815
    .local v19, "type":I
    :goto_2
    const/4 v6, -0x1

    :try_start_0
    invoke-interface {v12, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 816
    :cond_2
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 817
    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 818
    .local v14, "id":J
    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 819
    .local v18, "providerName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    .line 820
    .local v17, "provider":Landroid/content/ComponentName;
    const/16 v16, 0x0

    .line 821
    .local v16, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    const/4 v10, 0x0

    .line 822
    .local v10, "backupKey":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 823
    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v16

    .line 824
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    .line 830
    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v8, 0x3

    if-lt v6, v8, :cond_5

    .line 834
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 851
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v14    # "id":J
    .end local v16    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v17    # "provider":Landroid/content/ComponentName;
    .end local v18    # "providerName":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v6

    .line 813
    .end local v19    # "type":I
    :cond_3
    const/16 v19, 0x4

    goto :goto_2

    .line 826
    .restart local v10    # "backupKey":Ljava/lang/String;
    .restart local v14    # "id":J
    .restart local v16    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .restart local v17    # "provider":Landroid/content/ComponentName;
    .restart local v18    # "providerName":Ljava/lang/String;
    .restart local v19    # "type":I
    :cond_4
    :try_start_1
    const-string v6, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "empty intent on appwidget: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 835
    :cond_5
    if-eqz v10, :cond_2

    .line 837
    const/4 v6, 0x5

    if-ge v11, v6, :cond_6

    .line 839
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    .line 840
    .local v20, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packWidget(ILandroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v11, v11, 0x1

    .line 843
    goto/16 :goto_3

    .line 846
    .end local v20    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->dataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 851
    .end local v10    # "backupKey":Ljava/lang/String;
    .end local v14    # "id":J
    .end local v16    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v17    # "provider":Landroid/content/ComponentName;
    .end local v18    # "providerName":Ljava/lang/String;
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J
    .locals 6
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .prologue
    const-wide/32 v4, 0xffff

    .line 942
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 943
    .local v0, "checksum":Ljava/util/zip/CRC32;
    iget v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 944
    iget-wide v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 945
    iget-wide v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    .line 946
    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 949
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private dataChanged()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 195
    return-void
.end method

.method private getAppVersion()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 447
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :goto_0
    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private getCurrentStateJournal()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 4

    .prologue
    .line 435
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    .line 436
    .local v0, "journal":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    .line 437
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    iput-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .line 438
    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getAppVersion()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    .line 439
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    .line 440
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iput-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 441
    return-object v0
.end method

.method private getGridSize([IZ)V
    .locals 4
    .param p1, "cellXY"    # [I
    .param p2, "isHomeOnlyData"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 484
    aput v1, p1, v3

    aput v1, p1, v2

    .line 486
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    .line 494
    :cond_2
    aget v0, p1, v2

    if-eq v0, v1, :cond_3

    aget v0, p1, v3

    if-ne v0, v1, :cond_0

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    aput v0, p1, v2

    .line 496
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    aput v0, p1, v3

    goto :goto_0
.end method

.method private getKey(IJ)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 4
    .param p1, "type"    # I
    .param p2, "id"    # J

    .prologue
    .line 892
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    .line 893
    .local v0, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iput p1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    .line 894
    iput-wide p2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    .line 895
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    .line 896
    return-object v0
.end method

.method private getKey(ILjava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 4
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 906
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    .line 907
    .local v0, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iput p1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    .line 908
    iput-object p2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    .line 909
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    .line 910
    return-object v0
.end method

.method private initDeviceProfileData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 455
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 454
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 456
    .local v1, "prefs":Landroid/content/SharedPreferences;
    iput-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    .line 457
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    const-string v2, "EMPTY_DATABASE_CREATED"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 459
    const-string v2, "home_only_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    .line 463
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 466
    .local v0, "cellXY":[I
    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getGridSize([IZ)V

    .line 467
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v4

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    .line 468
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v5

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    .line 470
    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getGridSize([IZ)V

    .line 471
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v4

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    .line 472
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v5

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    .line 475
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const-string v3, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    .line 476
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 477
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const-string v3, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    .line 481
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    goto :goto_0
.end method

.method private isBackupCompatible(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)Z
    .locals 6
    .param p1, "oldState"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 306
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 307
    .local v0, "currentProfile":Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 309
    .local v1, "oldProfile":Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-lez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-gtz v4, :cond_2

    :cond_0
    move v2, v3

    .line 322
    :cond_1
    :goto_0
    return v2

    .line 313
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-nez v4, :cond_1

    .line 316
    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    iget v5, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-lt v4, v5, :cond_3

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    iget v5, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-ge v4, v5, :cond_1

    :cond_3
    move v2, v3

    .line 322
    goto :goto_0
.end method

.method private keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .prologue
    .line 917
    invoke-static {p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launcherIsReady()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1319
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1320
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1321
    .local v6, "cursor":Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1327
    :goto_0
    return v7

    .line 1325
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1327
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    move v7, v1

    goto :goto_0

    :cond_1
    move v1, v7

    goto :goto_1
.end method

.method private packFavorite(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 13
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    const/4 v12, 0x4

    const/4 v10, 0x0

    .line 956
    new-instance v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    invoke-direct {v3}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;-><init>()V

    .line 957
    .local v3, "favorite":Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    .line 958
    const/16 v10, 0xd

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    .line 959
    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    .line 960
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    .line 961
    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    .line 962
    const/16 v10, 0xe

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    .line 963
    const/16 v10, 0xf

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    .line 964
    const/16 v10, 0xb

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    .line 965
    const/16 v10, 0x12

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    .line 967
    const/16 v10, 0x10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 968
    .local v9, "title":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 969
    iput-object v9, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    .line 971
    :cond_0
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 972
    .local v7, "intentDescription":Ljava/lang/String;
    const/4 v6, 0x0

    .line 973
    .local v6, "intent":Landroid/content/Intent;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 975
    const/4 v10, 0x0

    :try_start_0
    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    .line 976
    const-string v10, "profile"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 977
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :cond_1
    :goto_0
    const/16 v10, 0xc

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    .line 983
    iget v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    if-ne v10, v12, :cond_3

    .line 984
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    .line 985
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "appWidgetProvider":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 987
    iput-object v0, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    .line 1015
    .end local v0    # "appWidgetProvider":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object v3

    .line 978
    :catch_0
    move-exception v2

    .line 979
    .local v2, "e":Ljava/net/URISyntaxException;
    const-string v10, "LauncherBackupHelper"

    const-string v11, "Invalid intent"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 989
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_3
    iget v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 990
    const/4 v8, 0x0

    .line 991
    .local v8, "isAppsButton":Z
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 992
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 993
    const/4 v8, 0x1

    .line 996
    :cond_4
    if-nez v8, :cond_2

    .line 997
    iget v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    if-nez v10, :cond_6

    .line 998
    const/16 v10, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "iconPackage":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1000
    iput-object v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    .line 1002
    :cond_5
    const/16 v10, 0xa

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1003
    .local v5, "iconResource":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1004
    iput-object v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    .line 1008
    .end local v4    # "iconPackage":Ljava/lang/String;
    .end local v5    # "iconResource":Ljava/lang/String;
    :cond_6
    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1009
    .local v1, "blob":[B
    if-eqz v1, :cond_2

    array-length v10, v1

    if-lez v10, :cond_2

    .line 1010
    iput-object v1, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    goto :goto_1
.end method

.method private packIcon(ILandroid/graphics/Bitmap;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 2
    .param p1, "dpi"    # I
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1138
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    .line 1139
    .local v0, "res":Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    iput p1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    .line 1140
    invoke-static {p2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    .line 1141
    return-object v0
.end method

.method private packScreen(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;

    .prologue
    .line 1116
    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;-><init>()V

    .line 1117
    .local v0, "screen":Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    .line 1118
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    .line 1119
    return-object v0
.end method

.method private packWidget(ILandroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 8
    .param p1, "dpi"    # I
    .param p2, "provider"    # Landroid/content/ComponentName;
    .param p3, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;

    .prologue
    .line 1149
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p3}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v2

    .line 1150
    .local v2, "info":Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    new-instance v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    invoke-direct {v4}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;-><init>()V

    .line 1151
    .local v4, "widget":Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    .line 1152
    iget-object v5, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    .line 1153
    iget-object v5, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    .line 1154
    iget v5, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    if-eqz v5, :cond_0

    .line 1155
    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    iput-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 1156
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1157
    .local v0, "fullResIcon":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1158
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    .line 1159
    iget-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iput p1, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    .line 1162
    .end local v0    # "fullResIcon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpans()Landroid/graphics/Point;

    move-result-object v3

    .line 1163
    .local v3, "spans":Landroid/graphics/Point;
    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    .line 1164
    iget v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    .line 1166
    return-object v4

    .line 1153
    .end local v3    # "spans":Landroid/graphics/Point;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static readCheckedBytes([BI)[B
    .locals 6
    .param p0, "buffer"    # [B
    .param p1, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1305
    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;-><init>()V

    .line 1306
    .local v1, "wrapper":Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    .line 1307
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1308
    .local v0, "checksum":Ljava/util/zip/CRC32;
    iget-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 1309
    iget-wide v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 1310
    new-instance v2, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v3, "checksum does not match"

    invoke-direct {v2, v3}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1312
    :cond_0
    iget-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    return-object v2
.end method

.method private readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 12
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 1189
    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    .line 1190
    .local v5, "journal":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    if-nez p1, :cond_0

    .line 1249
    :goto_0
    return-object v5

    .line 1193
    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1195
    .local v4, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    .line 1197
    .local v0, "availableBytes":I
    const v9, 0xf4240

    if-ge v0, v9, :cond_3

    .line 1198
    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    .local v1, "buffer":[B
    const/4 v2, 0x0

    .line 1200
    .local v2, "bytesRead":I
    const/4 v8, 0x0

    .line 1201
    .local v8, "valid":Z
    const/4 v6, 0x0

    .line 1202
    .local v6, "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :goto_1
    if-lez v0, :cond_2

    .line 1208
    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v4, v1, v2, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 1209
    .local v7, "result":I
    if-lez v7, :cond_1

    .line 1210
    sub-int/2addr v0, v7

    .line 1211
    add-int/2addr v2, v7

    .line 1224
    .end local v7    # "result":I
    :goto_2
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1226
    const/4 v8, 0x1

    .line 1227
    const/4 v0, 0x0

    goto :goto_1

    .line 1213
    .restart local v7    # "result":I
    :cond_1
    :try_start_3
    const-string v9, "LauncherBackupHelper"

    const-string v10, "unexpected end of file while reading journal."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1215
    const/4 v0, 0x0

    goto :goto_2

    .line 1217
    .end local v7    # "result":I
    :catch_0
    move-exception v3

    .line 1218
    .local v3, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 1219
    const/4 v0, 0x0

    goto :goto_2

    .line 1229
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1231
    .local v3, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    move-object v6, v3

    .line 1232
    :try_start_4
    invoke-virtual {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 1240
    .end local v0    # "availableBytes":I
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v3    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v6    # "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v8    # "valid":Z
    :catch_2
    move-exception v3

    .line 1241
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1244
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 1245
    :catch_3
    move-exception v3

    .line 1246
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1236
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "availableBytes":I
    .restart local v1    # "buffer":[B
    .restart local v2    # "bytesRead":I
    .restart local v6    # "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .restart local v8    # "valid":Z
    :cond_2
    if-nez v8, :cond_3

    .line 1237
    :try_start_7
    const-string v9, "LauncherBackupHelper"

    const-string v10, "could not find a valid journal"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1244
    .end local v1    # "buffer":[B
    .end local v2    # "bytesRead":I
    .end local v6    # "lastProtoException":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    .end local v8    # "valid":Z
    :cond_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    .line 1245
    :catch_4
    move-exception v3

    .line 1246
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1243
    .end local v0    # "availableBytes":I
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1244
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1247
    :goto_3
    throw v9

    .line 1245
    :catch_5
    move-exception v3

    .line 1246
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v10, "LauncherBackupHelper"

    const-string v11, "failed to close the journal"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private restoreFavorite(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V
    .locals 5
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .param p4, "isHomeOnlyData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 623
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackFavorite([BI)Landroid/content/ContentValues;

    move-result-object v2

    .line 624
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz p4, :cond_0

    const-string v3, "homeOnly"

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 626
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 627
    return-void

    .line 624
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v3, "home"

    goto :goto_0
.end method

.method private restoreIcon(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V
    .locals 8
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 776
    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    .line 780
    .local v0, "res":Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    iget-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    array-length v4, v4

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 781
    .local v3, "icon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 782
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unpack icon for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_0
    return-void

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    const-string v5, ""

    iget-wide v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mUserSerial:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/common/model/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method private restoreProfile(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V
    .locals 10
    .param p1, "oldState"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 553
    iget-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v4, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v3, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 558
    .local v3, "profile":Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;
    if-eqz v3, :cond_0

    .line 562
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 563
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    if-le v4, v8, :cond_5

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    if-le v4, v8, :cond_5

    .line 566
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 567
    iput-boolean v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->switchDb:Z

    .line 572
    :goto_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 574
    .local v1, "cellXY":[I
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    iget v6, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    invoke-static {v4, v1, v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 575
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    aget v5, v1, v7

    aget v6, v1, v9

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 581
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    if-le v4, v8, :cond_2

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    if-le v4, v8, :cond_2

    .line 584
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    iget v6, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    invoke-static {v4, v1, v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 586
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    aget v5, v1, v7

    aget v6, v1, v9

    invoke-static {v4, v5, v6, v9}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    .line 593
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 594
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    aget v5, v1, v7

    aget v6, v1, v9

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    .line 597
    .end local v1    # "cellXY":[I
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 598
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    .line 597
    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 598
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 599
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "com.sec.android.app.launcher.home.defaultpage.prefs"

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 600
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    if-eq v4, v8, :cond_4

    .line 602
    const-string v4, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 604
    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 569
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    invoke-virtual {v0, v7}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    goto :goto_1

    .line 577
    .restart local v1    # "cellXY":[I
    :cond_6
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    goto/16 :goto_0

    .line 588
    :cond_7
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    goto/16 :goto_0
.end method

.method private restoreScreen(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V
    .locals 5
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .param p4, "isHomeOnlyData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 682
    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 683
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackScreen([BI)Landroid/content/ContentValues;

    move-result-object v2

    .line 684
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz p4, :cond_0

    const-string v3, "homeOnly"

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    .line 686
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 687
    return-void

    .line 684
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    const-string v3, "home"

    goto :goto_0
.end method

.method private restoreWidget(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V
    .locals 8
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 868
    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    .line 870
    .local v0, "widget":Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    iget-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v1, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v1, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v4, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    array-length v4, v4

    .line 872
    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 873
    .local v3, "icon":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 874
    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unpack widget icon for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 883
    return-void

    .line 876
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget v4, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mUserSerial:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/common/model/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method private unpackFavorite([BI)Landroid/content/ContentValues;
    .locals 12
    .param p1, "buffer"    # [B
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1022
    new-instance v8, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    invoke-direct {v8}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;-><init>()V

    invoke-direct {p0, v8, p1, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    .line 1024
    .local v1, "favorite":Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1025
    .local v5, "values":Landroid/content/ContentValues;
    const-string v8, "_id"

    iget-wide v10, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1026
    const-string v8, "screen"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string v8, "container"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string v8, "cellX"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1029
    const-string v8, "cellY"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1030
    const-string v8, "spanX"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1031
    const-string v8, "spanY"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string v8, "rank"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1035
    const/4 v3, 0x0

    .line 1036
    .local v3, "isAppsButton":Z
    const/4 v2, 0x0

    .line 1037
    .local v2, "intent":Landroid/content/Intent;
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 1039
    :try_start_0
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1045
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 1046
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1047
    const/4 v3, 0x1

    .line 1050
    :cond_1
    const-string v8, "iconType"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    if-eqz v3, :cond_6

    .line 1052
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    .line 1062
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isAppsButton":Z
    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1063
    const-string v8, "title"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    :goto_2
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1068
    const-string v8, "intent"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_3
    const-string v8, "itemType"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1072
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    .line 1073
    .local v4, "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    iget-object v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 1074
    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    .line 1075
    .local v6, "userSerialNumber":J
    const-string v8, "profileId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1077
    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    .line 1078
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1079
    const-string v8, "appWidgetProvider"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    :cond_4
    const-string v8, "appWidgetId"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1082
    const-string v8, "restored"

    const/4 v9, 0x7

    .line 1083
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1082
    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1088
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v8

    if-nez v8, :cond_b

    .line 1089
    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-gt v8, v9, :cond_5

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-le v8, v9, :cond_b

    .line 1091
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    .line 1092
    new-instance v8, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    const-string v9, "Widget not in screen bounds, aborting restore"

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v8

    .line 1040
    .end local v4    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v6    # "userSerialNumber":J
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isAppsButton":Z
    :catch_0
    move-exception v0

    .line 1041
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v8, "LauncherBackupHelper"

    const-string v9, "Invalid intent"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1054
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_6
    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    if-nez v8, :cond_7

    .line 1055
    const-string v8, "iconPackage"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    const-string v8, "iconResource"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    :cond_7
    const-string v8, "icon"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    .line 1065
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isAppsButton":Z
    :cond_8
    const-string v8, "title"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1096
    .restart local v4    # "myUserHandle":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v6    # "userSerialNumber":J
    :cond_9
    const-string v8, "restored"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_b

    .line 1101
    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-ge v8, v9, :cond_a

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-lt v8, v9, :cond_b

    .line 1103
    :cond_a
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    .line 1104
    new-instance v8, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    const-string v9, "Item not in desktop bounds, aborting restore"

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v8

    .line 1109
    :cond_b
    return-object v5
.end method

.method private unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .param p2, "buffer"    # [B
    .param p3, "dataSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1174
    .local p1, "proto":Lcom/google/protobuf/nano/MessageNano;, "TT;"
    invoke-static {p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 1176
    return-object p1
.end method

.method private unpackScreen([BI)Landroid/content/ContentValues;
    .locals 6
    .param p1, "buffer"    # [B
    .param p2, "dataSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1127
    new-instance v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    invoke-direct {v2}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;-><init>()V

    invoke-direct {p0, v2, p1, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    .line 1128
    .local v0, "screen":Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1129
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1130
    const-string v2, "screenRank"

    iget v3, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1131
    return-object v1
.end method

.method private writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 4
    .param p1, "proto"    # Lcom/google/protobuf/nano/MessageNano;

    .prologue
    .line 1292
    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;-><init>()V

    .line 1293
    .local v1, "wrapper":Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    .line 1294
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 1295
    .local v0, "checksum":Ljava/util/zip/CRC32;
    iget-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 1296
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    .line 1297
    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    return-object v2
.end method

.method private writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V
    .locals 5
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "journal"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    .prologue
    .line 1278
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1279
    .local v2, "outStream":Ljava/io/FileOutputStream;
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    .line 1280
    .local v1, "journalBytes":[B
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1281
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    .end local v1    # "journalBytes":[B
    .end local v2    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "LauncherBackupHelper"

    const-string v4, "failed to write backup journal"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 1
    .param p1, "key"    # Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .param p2, "proto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1254
    invoke-direct {p0, p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    .line 1255
    return-void
.end method

.method private writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 2
    .param p1, "backupKey"    # Ljava/lang/String;
    .param p2, "proto"    # Lcom/google/protobuf/nano/MessageNano;
    .param p3, "data"    # Landroid/app/backup/BackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1259
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 1260
    .local v0, "blob":[B
    array-length v1, v0

    invoke-virtual {p3, p1, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 1261
    array-length v1, v0

    invoke-virtual {p3, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 1262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 1264
    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 224
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v5

    .line 225
    .local v5, "in":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->launcherIsReady()Z

    move-result v11

    if-nez v11, :cond_0

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->dataChanged()V

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    .line 299
    :goto_0
    return-void

    .line 232
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v11, :cond_1

    .line 233
    new-instance v11, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v11}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 236
    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 237
    .local v2, "app":Lcom/android/launcher3/LauncherAppState;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->initDeviceProfileData()V

    .line 238
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 240
    const-string v11, "LauncherBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lastBackupTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 242
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->applyJournal(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 247
    .local v8, "newBackupTime":J
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 249
    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;Z)V

    .line 250
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupScreens(Landroid/app/backup/BackupDataOutput;Z)V

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupIcons(Landroid/app/backup/BackupDataOutput;)V

    .line 252
    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;Z)V

    .line 253
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 254
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;Z)V

    .line 255
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupScreens(Landroid/app/backup/BackupDataOutput;Z)V

    .line 256
    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;Z)V

    .line 260
    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v10, "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    .line 262
    .local v6, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 294
    .end local v6    # "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .end local v10    # "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    .line 295
    .local v4, "e":Ljava/io/IOException;
    const-string v11, "LauncherBackupHelper"

    const-string v12, "launcher backup has failed"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 298
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    .line 264
    .restart local v10    # "validKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 267
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 269
    .local v3, "deleted":Ljava/lang/String;
    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 270
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    goto :goto_3

    .line 273
    .end local v3    # "deleted":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    .line 274
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-nez v11, :cond_7

    .line 276
    iget-object v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v11, :cond_6

    iget-object v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 277
    invoke-static {v11}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 278
    invoke-static {v12}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v12

    .line 277
    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    iget v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    .line 280
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getAppVersion()I

    move-result v12

    if-eq v11, v12, :cond_8

    :cond_6
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    .line 283
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-eqz v11, :cond_3

    .line 284
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v7

    .line 290
    .local v7, "state":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    const-string v11, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v7, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 280
    .end local v7    # "state":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 334
    iget-boolean v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v6, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v6, :cond_2

    .line 341
    new-instance v6, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v6}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    .line 342
    new-instance v6, Lcom/android/launcher3/common/model/IconCache;

    iget-object v7, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00cb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/common/model/IconCache;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    .line 344
    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->initDeviceProfileData()V

    .line 347
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v2

    .line 348
    .local v2, "dataSize":I
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    array-length v6, v6

    if-ge v6, v2, :cond_3

    .line 349
    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    .line 352
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v2}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    move-result v1

    .line 354
    .local v1, "bytesRead":I
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "backupKey":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 358
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 360
    const-string v7, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " received after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v0    # "backupKey":Ljava/lang/String;
    .end local v1    # "bytesRead":I
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "LauncherBackupHelper"

    const-string v7, "ignoring unparsable backup entry"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 365
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "backupKey":Ljava/lang/String;
    .restart local v1    # "bytesRead":I
    :cond_4
    :try_start_1
    new-instance v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v4}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    .line 366
    .local v4, "journal":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-static {v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    .line 367
    invoke-direct {p0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->applyJournal(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    .line 368
    invoke-direct {p0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->isBackupCompatible(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    .line 369
    invoke-direct {p0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreProfile(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    goto/16 :goto_0

    .line 373
    .end local v4    # "journal":Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v5

    .line 378
    .local v5, "key":Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    iget v6, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    packed-switch v6, :pswitch_data_0

    .line 415
    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown restore entity type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 381
    :pswitch_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreFavorite(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    .line 385
    :pswitch_1
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreScreen(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    .line 389
    :pswitch_2
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreIcon(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    .line 393
    :pswitch_3
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreWidget(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    .line 397
    :pswitch_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 398
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreFavorite(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    .line 403
    :pswitch_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 404
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreScreen(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    .line 409
    :pswitch_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 410
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreWidget(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    .line 432
    return-void
.end method
