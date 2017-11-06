.class public final Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;
.super Ljava/lang/Object;
.source "MusicDBInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicDBInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DBSyncInfo"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CP_MEDIA_PROVIDER:Ljava/lang/String; = "MediaProvider"

.field static final SCHEMA_COLUMNS_DEFINITION:Ljava/lang/String; = "sync_content_type TEXT UNIQUE on conflict replace, sync_date_integer INTEGER, sync_date_format TEXT, sync_full_update INTEGER, sync_msg TEXT, sync_locale TEXT"

.field public static final SYNC_CONTENT_TYPE:Ljava/lang/String; = "sync_content_type"

.field public static final SYNC_DATE:Ljava/lang/String; = "sync_date_integer"

.field public static final SYNC_DATE_FORMAT:Ljava/lang/String; = "sync_date_format"

.field public static final SYNC_FULL_UPDATE:Ljava/lang/String; = "sync_full_update"

.field public static final SYNC_LOCALE:Ljava/lang/String; = "sync_locale"

.field public static final SYNC_MSG:Ljava/lang/String; = "sync_msg"

.field static final TABLE_NAME:Ljava/lang/String; = "smusic_db_info"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 833
    const-string v0, "content://com.sec.android.app.music/db_info/sync"

    .line 834
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    .line 833
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 832
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSyncedState(Landroid/content/Context;Ljava/lang/String;)J
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 879
    const-wide/16 v8, 0x0

    .line 881
    .local v8, "updatedTime":J
    const/4 v6, 0x0

    .line 882
    .local v6, "c":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 884
    .local v7, "dateFormat":Ljava/lang/String;
    const/4 v0, 0x2

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "sync_date_integer"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "sync_date_format"

    aput-object v1, v2, v0

    .line 885
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "sync_content_type=?"

    .line 886
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 887
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    .line 888
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/utils/InternalContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 889
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 891
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 894
    :cond_0
    if-eqz v6, :cond_1

    .line 895
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 899
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "getSyncedState : cpName[%s], date[%s]"

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v11

    aput-object v7, v10, v12

    invoke-static {v1, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-wide v8

    .line 894
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 895
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method static reset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 905
    const-string/jumbo v0, "sync_content_type=?"

    .line 906
    .local v0, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 907
    .local v1, "selectionArgs":[Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/InternalContentResolverWrapper;->delete(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 908
    return-void
.end method

.method static updateSyncedState(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cpName"    # Ljava/lang/String;
    .param p2, "fullUpdate"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 868
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 869
    .local v1, "value":Landroid/content/ContentValues;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MM-dd hh:mm:ss.SSS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 870
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    const-string/jumbo v2, "sync_content_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string/jumbo v2, "sync_date_integer"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 872
    const-string/jumbo v2, "sync_date_format"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string/jumbo v3, "sync_full_update"

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 874
    const-string/jumbo v2, "sync_msg"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/InternalContentResolverWrapper;->insert(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 876
    return-void

    .line 873
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
