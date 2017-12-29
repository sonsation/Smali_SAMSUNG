.class public Lcom/android/settings/VoWiFiCallingDBManager;
.super Ljava/lang/Object;
.source "VoWiFiCallingDBManager.java"


# static fields
.field public static final CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "iwlansettings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "todos"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "vowifisetting"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/VoWiFiCallingDBManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "column"    # [Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 75
    array-length v0, p1

    new-array v7, v0, [Ljava/lang/String;

    .line 76
    .local v7, "dbValue":[Ljava/lang/String;
    const/4 v11, 0x0

    .line 77
    .local v11, "messagesCursor":Landroid/database/Cursor;
    invoke-static {v7, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string/jumbo v0, "VoWiFiCallingDBManager"

    const-string/jumbo v1, "getString: context is null.. DB operation canceled, returning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-object v7

    .line 83
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/VoWiFiCallingDBManager;->CONTENT_URI_VOWIFISETTING_TABLE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 84
    .local v11, "messagesCursor":Landroid/database/Cursor;
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 85
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 86
    const/4 v6, 0x0

    .local v6, "count":I
    :goto_0
    array-length v0, v7

    if-ge v6, v0, :cond_1

    .line 87
    aget-object v0, p1, v6

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v6

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v0, "VoWiFiCallingDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getString() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v7, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v6    # "count":I
    :cond_2
    if-eqz v11, :cond_3

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 102
    .end local v11    # "messagesCursor":Landroid/database/Cursor;
    :goto_1
    const/4 v11, 0x0

    .line 105
    :cond_3
    return-object v7

    .line 96
    :catch_0
    move-exception v8

    .line 97
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 98
    const-string/jumbo v0, "VoWiFiCallingDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "caught:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    if-eqz v11, :cond_3

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 93
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v9

    .line 94
    .local v9, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 95
    const-string/jumbo v0, "VoWiFiCallingDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "caught:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 100
    if-eqz v11, :cond_3

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 90
    .end local v9    # "e":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v10

    .line 91
    .local v10, "e":Ljava/lang/NumberFormatException;
    :try_start_3
    invoke-virtual {v10}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 92
    const-string/jumbo v0, "VoWiFiCallingDBManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "caught:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    if-eqz v11, :cond_3

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 99
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v0

    .line 100
    if-eqz v11, :cond_4

    .line 101
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 102
    const/4 v11, 0x0

    .line 99
    :cond_4
    throw v0
.end method
