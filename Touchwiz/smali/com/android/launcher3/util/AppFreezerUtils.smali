.class public final Lcom/android/launcher3/util/AppFreezerUtils;
.super Ljava/lang/Object;
.source "AppFreezerUtils.java"


# static fields
.field private static final APP_FREEZER_PACKAGE:Ljava/lang/String; = "com.samsung.android.lool"

.field private static final APP_FREEZER_UID_VERSION:I = 0x10a0009

.field private static final APP_FREEZER_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "AppFreezerUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/util/AppFreezerUtils;->APP_FREEZER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPutIntoSleepMode(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 37
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v9

    .line 41
    .local v2, "Columns":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/launcher3/util/AppFreezerUtils;->isSupportUID(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const-string v3, "uid = ? AND package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?) AND autorun = ?"

    .line 44
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object p2, v4, v8

    const-string v0, "1"

    aput-object v0, v4, v1

    const-string v0, "0"

    aput-object v0, v4, v5

    const-string v0, "2"

    aput-object v0, v4, v10

    const/4 v0, 0x5

    const-string v1, "1"

    aput-object v1, v4, v0

    .line 59
    .local v4, "selectionArg":[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 61
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/AppFreezerUtils;->APP_FREEZER_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_4

    move v0, v8

    .line 66
    :goto_1
    if-eqz v6, :cond_0

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_0
    :goto_2
    return v0

    .line 46
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v3, "uid = ? AND package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?)"

    .line 47
    .restart local v3    # "whereClause":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object p2, v4, v8

    const-string v0, "1"

    aput-object v0, v4, v1

    const-string v0, "0"

    aput-object v0, v4, v5

    const-string v0, "2"

    aput-object v0, v4, v10

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_0

    .line 50
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 51
    const-string v3, "package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?) AND autorun = ?"

    .line 52
    .restart local v3    # "whereClause":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    aput-object p2, v4, v9

    const-string v0, "1"

    aput-object v0, v4, v8

    const-string v0, "0"

    aput-object v0, v4, v1

    const-string v0, "2"

    aput-object v0, v4, v5

    const-string v0, "1"

    aput-object v0, v4, v10

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_0

    .line 54
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    :cond_3
    const-string v3, "package_name = ? AND isAppOptTarget = ? AND (extras = ? OR extras = ?)"

    .line 55
    .restart local v3    # "whereClause":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    aput-object p2, v4, v9

    const-string v0, "1"

    aput-object v0, v4, v8

    const-string v0, "0"

    aput-object v0, v4, v1

    const-string v0, "2"

    aput-object v0, v4, v5

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_4
    move v0, v9

    .line 62
    goto :goto_1

    .line 63
    :catch_0
    move-exception v7

    .line 64
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AppFreezerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APP_FREEZER :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-eqz v6, :cond_5

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    .line 70
    goto :goto_2

    .line 66
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    .line 67
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method public static isInSleepMode(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Lcom/android/launcher3/common/compat/UserHandleCompat;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 74
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "package_name"

    aput-object v0, v2, v9

    .line 78
    .local v2, "Columns":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/launcher3/util/AppFreezerUtils;->isSupportUID(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const-string v3, "uid = ? AND package_name = ? AND isAppOptTarget = ? AND extras = ?"

    .line 80
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/launcher3/common/compat/UserHandleCompat;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v9

    aput-object p2, v4, v8

    const-string v0, "1"

    aput-object v0, v4, v1

    const-string v0, "1"

    aput-object v0, v4, v5

    .line 86
    .local v4, "selectionArg":[Ljava/lang/String;
    :goto_0
    const/4 v6, 0x0

    .line 88
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/AppFreezerUtils;->APP_FREEZER_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 89
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v8, :cond_2

    move v0, v8

    .line 93
    :goto_1
    if-eqz v6, :cond_0

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_0
    :goto_2
    return v0

    .line 82
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v6    # "c":Landroid/database/Cursor;
    :cond_1
    const-string v3, "package_name = ? AND isAppOptTarget = ? AND extras = ?"

    .line 83
    .restart local v3    # "whereClause":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    aput-object p2, v4, v9

    const-string v0, "1"

    aput-object v0, v4, v8

    const-string v0, "1"

    aput-object v0, v4, v1

    .restart local v4    # "selectionArg":[Ljava/lang/String;
    goto :goto_0

    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_2
    move v0, v9

    .line 89
    goto :goto_1

    .line 90
    :catch_0
    move-exception v7

    .line 91
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "AppFreezerUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APP_FREEZER :"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    if-eqz v6, :cond_3

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    .line 97
    goto :goto_2

    .line 93
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 94
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public static isSupportUID(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    const-string v0, "com.samsung.android.lool"

    invoke-static {p0, v0}, Lcom/android/launcher3/Utilities;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const v1, 0x10a0009

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
