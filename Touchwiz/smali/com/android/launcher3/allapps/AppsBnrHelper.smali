.class public Lcom/android/launcher3/allapps/AppsBnrHelper;
.super Ljava/lang/Object;
.source "AppsBnrHelper.java"

# interfaces
.implements Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;


# static fields
.field static final APPS_VIEW_TYPE_ALPHABETIC:Ljava/lang/String; = "ALPHABETIC"

.field static final APPS_VIEW_TYPE_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field private static final GOOGLE_VOICE_SEARCH_CLASS_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox.VoiceSearchActivity"

.field private static final TAG:Ljava/lang/String; = "Launcher.AppsBnr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLauncherPrefix:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mLauncherPrefix:Z

    return-void
.end method

.method private backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "container"    # Ljava/lang/String;
    .param p3, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p4, "source"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 168
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "container=-102 and "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    .line 171
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    .local v4, "selection":Ljava/lang/String;
    const-string v14, "screen, rank"

    .line 174
    .local v14, "sortOrder":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 175
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v6, "screen, rank"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 177
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_1

    .line 178
    const-string v3, "Launcher.AppsBnr"

    const-string v5, "backupApps, fail to open cursor"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v3, 0x1

    move-object/from16 v0, p5

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    const-string v3, "\n"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object v9, v1

    move-object/from16 v10, p3

    move-object v11, v2

    move-object/from16 v12, p5

    .line 186
    invoke-direct/range {v5 .. v12}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 188
    :catch_0
    move-exception v13

    .line 189
    .local v13, "e":Ljava/lang/Exception;
    const/4 v3, 0x1

    :try_start_1
    move-object/from16 v0, p5

    iput v3, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 190
    const-string v3, "Launcher.AppsBnr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "backupApps Exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 192
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 193
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v3
.end method

.method private backupAppsGrid(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    const/4 v5, 0x1

    .line 145
    const/4 v2, 0x2

    :try_start_0
    new-array v0, v2, [I

    .line 146
    .local v0, "cellXY":[I
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    .line 147
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsGrid x = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const/4 v2, 0x0

    const-string v3, "Rows_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const/4 v2, 0x0

    const-string v3, "Rows_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const/4 v2, 0x0

    const-string v3, "Columns_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    const/4 v2, 0x0

    const-string v3, "Columns_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "cellXY":[I
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    iput v5, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 162
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsGrid Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private backupAppsViewType(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 5
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 124
    :try_start_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 125
    iget-object v2, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewTypeFromSharedPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "viewType":Ljava/lang/String;
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsViewType viewType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string v2, "\n"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    const/4 v2, 0x0

    const-string v3, "viewType_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 131
    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const-string v2, "ALPHABETIC"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    :goto_0
    const/4 v2, 0x0

    const-string v3, "viewType_appOrder"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    .end local v1    # "viewType":Ljava/lang/String;
    :goto_1
    return-void

    .line 134
    .restart local v1    # "viewType":Ljava/lang/String;
    :cond_0
    const-string v2, "CUSTOM"

    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v1    # "viewType":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    iput v2, p2, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 139
    const-string v2, "Launcher.AppsBnr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "backupAppsViewType Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V
    .locals 23
    .param p1, "folderId"    # J
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p8, "isLCExtractor"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    .line 320
    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 321
    .local v5, "selection":Ljava/lang/String;
    const-string v7, "rank"

    .line 322
    .local v7, "sortOrder":Ljava/lang/String;
    const-string v8, ""

    .line 323
    .local v8, "attrPrefix":Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 325
    .local v11, "cursor":Landroid/database/Cursor;
    if-nez v11, :cond_0

    .line 326
    const/4 v2, 0x1

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 327
    const-string v2, "Launcher.AppsBnr"

    const-string v3, "backupFolderItemById, fail to open cursor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :goto_0
    return-void

    .line 331
    :cond_0
    if-eqz p8, :cond_1

    .line 332
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mLauncherPrefix:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 336
    :cond_1
    new-instance v12, Lcom/android/launcher3/common/model/CursorInfo;

    invoke-direct {v12, v11}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 338
    .local v12, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 339
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 340
    .local v17, "itemType":I
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->rankIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 341
    .local v19, "rank":I
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 342
    .local v16, "intent":Ljava/lang/String;
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 343
    .local v14, "hidden":I
    iget v2, v12, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 345
    .local v20, "restore":I
    if-nez v14, :cond_2

    if-nez v20, :cond_2

    .line 350
    const-string v2, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 351
    const/4 v10, 0x0

    .line 352
    .local v10, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 355
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    .line 359
    .local v15, "in":Landroid/content/Intent;
    :try_start_2
    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 362
    .end local v15    # "in":Landroid/content/Intent;
    :cond_3
    const/16 v18, 0x0

    .line 363
    .local v18, "packageName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 364
    .local v9, "className":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 365
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 366
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 369
    :cond_4
    packed-switch v17, :pswitch_data_0

    goto :goto_1

    .line 371
    :pswitch_0
    if-eqz v10, :cond_2

    .line 374
    if-eqz p8, :cond_5

    .line 375
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 377
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_5
    const/4 v2, 0x0

    const-string v3, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "screen"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 380
    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 383
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "packageName"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    move-object/from16 v1, v18

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 386
    :cond_6
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 387
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "className"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    :cond_7
    const-string v2, "SCLOUD"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 392
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 393
    .local v21, "restored":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    .end local v21    # "restored":Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    const-string v3, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 403
    .end local v9    # "className":Ljava/lang/String;
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v14    # "hidden":I
    .end local v16    # "intent":Ljava/lang/String;
    .end local v17    # "itemType":I
    .end local v18    # "packageName":Ljava/lang/String;
    .end local v19    # "rank":I
    .end local v20    # "restore":I
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_9

    .line 404
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 356
    .restart local v10    # "componentName":Landroid/content/ComponentName;
    .restart local v14    # "hidden":I
    .restart local v16    # "intent":Ljava/lang/String;
    .restart local v17    # "itemType":I
    .restart local v19    # "rank":I
    .restart local v20    # "restore":I
    :catch_0
    move-exception v13

    .line 357
    .local v13, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 403
    .end local v10    # "componentName":Landroid/content/ComponentName;
    .end local v13    # "e":Ljava/net/URISyntaxException;
    .end local v14    # "hidden":I
    .end local v16    # "intent":Ljava/lang/String;
    .end local v17    # "itemType":I
    .end local v19    # "rank":I
    .end local v20    # "restore":I
    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_b

    .line 404
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_b
    const-string v2, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private backupItem(Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 26
    .param p1, "container"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "cr"    # Landroid/content/ContentResolver;
    .param p5, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p6, "uri"    # Landroid/net/Uri;
    .param p7, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    const-string v3, "LCExtractorApps"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 203
    .local v11, "isLCExtractor":Z
    const-string v2, ""

    .line 205
    .local v2, "attrPrefix":Ljava/lang/String;
    if-nez v11, :cond_4

    .line 206
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    :goto_0
    new-instance v14, Lcom/android/launcher3/common/model/CursorInfo;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lcom/android/launcher3/common/model/CursorInfo;-><init>(Landroid/database/Cursor;)V

    .line 215
    .local v14, "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    :cond_0
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->idIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 216
    .local v4, "id":J
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->itemTypeIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 217
    .local v20, "itemType":I
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->screenIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 219
    .local v24, "screen":I
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->titleIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 220
    .local v25, "title":Ljava/lang/String;
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->intentIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 221
    .local v18, "intent":Ljava/lang/String;
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->hiddenIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 222
    .local v16, "hidden":I
    iget v3, v14, Lcom/android/launcher3/common/model/CursorInfo;->restoredIndex:I

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 224
    .local v22, "restore":I
    const/16 v19, 0x0

    .line 226
    .local v19, "isVoiceSearch":Z
    if-nez v16, :cond_1

    if-eqz v22, :cond_5

    :cond_1
    if-nez v11, :cond_5

    .line 309
    :cond_2
    :goto_1
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    if-nez v11, :cond_3

    .line 312
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 313
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    :cond_3
    return-void

    .line 209
    .end local v4    # "id":J
    .end local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    .end local v16    # "hidden":I
    .end local v18    # "intent":Ljava/lang/String;
    .end local v19    # "isVoiceSearch":Z
    .end local v20    # "itemType":I
    .end local v22    # "restore":I
    .end local v24    # "screen":I
    .end local v25    # "title":Ljava/lang/String;
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mLauncherPrefix:Z

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 231
    .restart local v4    # "id":J
    .restart local v14    # "cursorInfo":Lcom/android/launcher3/common/model/CursorInfo;
    .restart local v16    # "hidden":I
    .restart local v18    # "intent":Ljava/lang/String;
    .restart local v19    # "isVoiceSearch":Z
    .restart local v20    # "itemType":I
    .restart local v22    # "restore":I
    .restart local v24    # "screen":I
    .restart local v25    # "title":Ljava/lang/String;
    :cond_5
    const/4 v13, 0x0

    .line 232
    .local v13, "componentName":Landroid/content/ComponentName;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 235
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 239
    .local v17, "in":Landroid/content/Intent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 242
    .end local v17    # "in":Landroid/content/Intent;
    :cond_6
    const/16 v21, 0x0

    .line 243
    .local v21, "packageName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 244
    .local v12, "className":Ljava/lang/String;
    if-eqz v13, :cond_7

    .line 245
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 246
    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    .line 249
    :cond_7
    if-eqz v11, :cond_e

    .line 250
    const-string v3, "com.google.android.googlequicksearchbox.VoiceSearchActivity"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 251
    const/16 v19, 0x1

    .line 253
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 258
    :goto_2
    packed-switch v20, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    .line 260
    :pswitch_1
    if-eqz v13, :cond_2

    .line 263
    if-eqz v11, :cond_9

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/launcher3/Utilities;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 267
    :cond_9
    const/4 v3, 0x0

    const-string v6, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 268
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 270
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "packageName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, v21

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 272
    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 273
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "className"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    :cond_b
    const-string v3, "SCLOUD"

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 277
    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    .line 278
    .local v23, "restored":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v6, "restored"

    move-object/from16 v0, p5

    move-object/from16 v1, v23

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    .end local v23    # "restored":Ljava/lang/String;
    :cond_c
    if-eqz v11, :cond_d

    if-eqz v19, :cond_d

    .line 282
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "hidden"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    :cond_d
    const/4 v3, 0x0

    const-string v6, "favorite"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 236
    .end local v12    # "className":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 237
    .local v15, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_1

    .line 255
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .restart local v12    # "className":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    :cond_e
    const-string v3, "\n"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 289
    :pswitch_2
    if-eqz v11, :cond_f

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " folder : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v6, 0x20

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 291
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 293
    :cond_f
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "screen"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 296
    const/4 v3, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "title"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p5

    move-object/from16 v1, v25

    invoke-interface {v0, v3, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_10
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 299
    invoke-direct/range {v3 .. v11}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupFolderItemById(JLjava/lang/String;Landroid/content/ContentResolver;Lorg/xmlpull/v1/XmlSerializer;Landroid/net/Uri;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Z)V

    .line 300
    if-eqz v11, :cond_11

    .line 301
    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->getStrTab(IZ)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    :cond_11
    const/4 v3, 0x0

    const-string v6, "folder"

    move-object/from16 v0, p5

    invoke-interface {v0, v3, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public backupCategory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 67
    const-string v2, "appOrder"

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "tableName":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v0

    .line 69
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 70
    const-string v2, "appOrder"

    .line 72
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public backupLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;

    .prologue
    .line 78
    const-string v0, "Launcher.AppsBnr"

    const-string v1, "backupLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iput-object p1, p0, Lcom/android/launcher3/allapps/AppsBnrHelper;->mContext:Landroid/content/Context;

    .line 82
    const-string v0, "LCExtractorHome"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const-string v0, "LCExtractorApps"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 85
    const-string v2, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupAppsViewType(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 90
    invoke-direct {p0, p2, p4}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupAppsGrid(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 91
    const-string v2, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    .line 92
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    if-nez v0, :cond_0

    .line 94
    const-string v2, "appOrder_easy"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsBnrHelper;->backupApps(Landroid/content/Context;Ljava/lang/String;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V

    goto :goto_0
.end method

.method public restoreLayout(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "restoredTable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v6

    .line 102
    .local v6, "favoritesProvider":Lcom/android/launcher3/common/model/FavoritesProvider;
    if-nez v6, :cond_0

    .line 103
    const-string v1, "Launcher.AppsBnr"

    const-string v2, "FavoritesProvider.getInstance() is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    .line 120
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v1, "Launcher.AppsBnr"

    const-string v3, "restoreLayout"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v7, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    invoke-direct {v7, p1, v6, p2}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/FavoritesProvider;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 111
    .local v7, "layoutParser":Lcom/android/launcher3/common/model/DefaultLayoutParser;
    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->restoreAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I

    move-result v1

    if-gez v1, :cond_1

    .line 112
    iput v4, p4, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V

    .line 117
    .local v0, "appsParser":Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
    check-cast v7, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;

    .line 118
    .end local v7    # "layoutParser":Lcom/android/launcher3/common/model/DefaultLayoutParser;
    invoke-virtual {v7}, Lcom/android/launcher3/allapps/AppsRestoreLayoutParser;->getRestoredCategory()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeAndAddHiddenApp(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
