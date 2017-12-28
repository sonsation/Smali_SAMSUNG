.class public Lcom/android/launcher3/LauncherProviderID;
.super Landroid/content/ContentProvider;
.source "LauncherProviderID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherProviderID$SingletonHolder;
    }
.end annotation


# static fields
.field static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings.id"

.field static final CALL_GRID_SIZE:Ljava/lang/String; = "gridSize"

.field static final CALL_PREF_CREATE:Ljava/lang/String; = "createPref"

.field static final CALL_PREF_EXISTS:Ljava/lang/String; = "checkPrefExists"

.field static final CALL_PREF_INIT:Ljava/lang/String; = "initPref"

.field static final CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

.field static final PARAMETER_INITID:Ljava/lang/String; = "initId"

.field private static final TABLE_PUBLIC_SCREEN_PREFERENCES:Ljava/lang/String; = "prefs"

.field private static final TAG:Ljava/lang/String; = "LauncherFacade::ID"

.field static final WIDGET_CLS_NAME:Ljava/lang/String; = "widgetClsName"

.field static final WIDGET_PKG_NAME:Ljava/lang/String; = "widgetPkgName"

.field private static sDb:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private mLauncherProvider:Lcom/android/launcher3/LauncherProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, "content://com.sec.android.app.launcher.settings.id/appWidgetUnbind"

    .line 61
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getFavoriteTable()Ljava/lang/String;
    .locals 4

    .prologue
    .line 467
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    .line 468
    .local v1, "isHomeOnlyMode":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    .line 470
    .local v0, "isEasyMode":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 471
    const-string v2, "favorites"

    .line 483
    :goto_0
    return-object v2

    .line 472
    :cond_0
    if-eqz v1, :cond_1

    .line 473
    const-string v2, "favorites_homeApps"

    goto :goto_0

    .line 474
    :cond_1
    if-eqz v0, :cond_3

    .line 477
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    const-string v3, "favorites_homeApps"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 478
    const-string v2, "favorites_homeApps"

    goto :goto_0

    .line 480
    :cond_2
    const-string v2, "favorites_standard"

    goto :goto_0

    .line 483
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/launcher3/LauncherProviderID;
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/android/launcher3/LauncherProviderID$SingletonHolder;->access$000()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v0

    return-object v0
.end method

.method private getLauncherProvider()Lcom/android/launcher3/LauncherProvider;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher3/LauncherProvider;

    if-nez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher3/LauncherProvider;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProviderID;->mLauncherProvider:Lcom/android/launcher3/LauncherProvider;

    return-object v0
.end method

.method private getworkSpaceScreensTable()Ljava/lang/String;
    .locals 4

    .prologue
    .line 488
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    .line 489
    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    .line 490
    .local v1, "isHomeOnlyMode":Z
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    .line 492
    .local v0, "isEasyMode":Z
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 493
    const-string v2, "workspaceScreens"

    .line 506
    :goto_0
    return-object v2

    .line 494
    :cond_0
    if-eqz v1, :cond_1

    .line 495
    const-string v2, "workspaceScreens_homeApps"

    goto :goto_0

    .line 496
    :cond_1
    if-eqz v0, :cond_3

    .line 500
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    const-string v3, "workspaceScreens_homeApps"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    const-string v2, "workspaceScreens_homeApps"

    goto :goto_0

    .line 503
    :cond_2
    const-string v2, "workspaceScreens_standard"

    goto :goto_0

    .line 506
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 20
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 167
    if-eqz p3, :cond_0

    const-string v18, "itemType"

    .line 168
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    if-nez v18, :cond_1

    .line 169
    :cond_0
    const/16 v18, 0x0

    .line 227
    :goto_0
    return-object v18

    .line 172
    :cond_1
    const-string v18, "itemType"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 173
    .local v10, "itemType":I
    const/16 v18, 0x4

    move/from16 v0, v18

    if-ne v10, v0, :cond_8

    const-string v18, "appWidgetId"

    .line 174
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    const-string v18, "appWidgetId"

    .line 175
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_8

    const-string v18, "appWidgetId"

    .line 176
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const-string v18, "widgetPkgName"

    .line 177
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 178
    const-string v18, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 179
    .local v11, "pkg":Ljava/lang/String;
    const-string v18, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 180
    .local v7, "cls":Ljava/lang/String;
    const-string v18, "widgetPkgName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 181
    const-string v18, "widgetClsName"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 182
    new-instance v8, Landroid/content/ComponentName;

    invoke-direct {v8, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v8, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    .line 185
    .local v6, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const/4 v9, 0x0

    .line 186
    .local v9, "insert":Z
    invoke-virtual {v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v17

    .line 187
    .local v17, "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/appwidget/AppWidgetProviderInfo;

    .line 188
    .local v16, "w":Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 189
    const/4 v9, 0x1

    .line 194
    .end local v16    # "w":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_3
    if-eqz v9, :cond_9

    .line 195
    new-instance v4, Landroid/appwidget/AppWidgetHost;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v18

    const/16 v19, 0x400

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 196
    .local v4, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    .line 198
    .local v5, "appWidgetId":I
    const-string v18, "appWidgetId"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v12

    .line 201
    .local v12, "provider":Lcom/android/launcher3/LauncherProvider;
    if-nez v12, :cond_4

    .line 202
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 204
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/LauncherProviderID;->getFavoriteTable()Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "tableName":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 206
    const-string v18, "LauncherFacade::ID"

    const-string v19, "[SPRINT]Error in getting favorite table Name,widget insertion failed"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 212
    :cond_5
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-static {v0, v13, v1, v2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v14

    .line 214
    .local v14, "rowId":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_6

    .line 215
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 217
    :cond_6
    invoke-virtual {v6, v5, v8}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 218
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p2

    move-object/from16 v18, p2

    .line 219
    goto/16 :goto_0

    .line 221
    :cond_7
    const-string v18, "LauncherFacade::ID"

    const-string v19, "Problem allocating appWidgetId"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v4    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    .end local v5    # "appWidgetId":I
    .end local v6    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v7    # "cls":Ljava/lang/String;
    .end local v8    # "cn":Landroid/content/ComponentName;
    .end local v9    # "insert":Z
    .end local v11    # "pkg":Ljava/lang/String;
    .end local v12    # "provider":Lcom/android/launcher3/LauncherProvider;
    .end local v13    # "tableName":Ljava/lang/String;
    .end local v14    # "rowId":J
    .end local v17    # "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_8
    :goto_1
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 223
    .restart local v6    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v7    # "cls":Ljava/lang/String;
    .restart local v8    # "cn":Landroid/content/ComponentName;
    .restart local v9    # "insert":Z
    .restart local v11    # "pkg":Ljava/lang/String;
    .restart local v17    # "wids":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :cond_9
    const-string v18, "LauncherFacade::ID"

    const-string v19, "No insertion for widget"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const-wide/16 v8, 0x1

    .line 231
    const-string v5, "initId"

    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "initId":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v5, "true"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v4

    .line 234
    .local v4, "provider":Lcom/android/launcher3/LauncherProvider;
    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    .line 235
    const-string v5, "_id"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 236
    .local v0, "id":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_2

    .line 237
    const-string v5, "LauncherFacade::ID"

    const-string v6, "Generating a new ID"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-wide/16 v2, -0x1

    .line 243
    .local v2, "maxId":J
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 244
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    .line 254
    :cond_1
    :goto_0
    const-string v5, "_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 260
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "maxId":J
    .end local v4    # "provider":Lcom/android/launcher3/LauncherProvider;
    :cond_2
    :goto_1
    return-void

    .line 245
    .restart local v0    # "id":Ljava/lang/Integer;
    .restart local v2    # "maxId":J
    .restart local v4    # "provider":Lcom/android/launcher3/LauncherProvider;
    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "favorites_homeApps"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v6

    add-long v2, v6, v8

    goto :goto_0

    .line 247
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "favorites_homeApps"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 249
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "favorites_homeApps"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v6

    add-long v2, v6, v8

    goto :goto_0

    .line 251
    :cond_5
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "favorites_standard"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v6

    add-long v2, v6, v8

    goto :goto_0

    .line 258
    .end local v0    # "id":Ljava/lang/Integer;
    .end local v2    # "maxId":J
    .end local v4    # "provider":Lcom/android/launcher3/LauncherProvider;
    :cond_6
    const-string v5, "LauncherFacade::ID"

    const-string v6, "Using old ID on insert"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 84
    sget-object v0, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 85
    sput-object p0, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    const/4 v2, 0x0

    .line 283
    .local v2, "res":Landroid/os/Bundle;
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "res":Landroid/os/Bundle;
    invoke-direct {v2, v7}, Landroid/os/Bundle;-><init>(I)V

    .line 284
    .restart local v2    # "res":Landroid/os/Bundle;
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 324
    :goto_1
    return-object v2

    .line 284
    :sswitch_0
    const-string v9, "gridSize"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v6

    goto :goto_0

    :sswitch_1
    const-string v9, "checkPrefExists"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v7

    goto :goto_0

    :sswitch_2
    const-string v9, "createPref"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v5, v8

    goto :goto_0

    :sswitch_3
    const-string v9, "initPref"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    .line 286
    :pswitch_0
    new-array v4, v8, [I

    .line 287
    .local v4, "xy":[I
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 288
    const-string v5, "gridSize"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_1

    .line 291
    .end local v4    # "xy":[I
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "prefs"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v0

    .line 293
    .local v0, "isExist":Z
    const-string v5, "LauncherFacade::ID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkPrefExists: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string v5, "checkPrefExists"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 297
    .end local v0    # "isExist":Z
    :pswitch_2
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    .line 298
    const-string v5, "LauncherFacade::ID"

    const-string v7, "createPref: Unable to create table"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v5, "createPref"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->createPrefsTable()V

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/LauncherProviderID;->initPreferences(Landroid/content/Context;)V

    .line 303
    const-string v5, "createPref"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 307
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getworkSpaceScreensTable()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "tableName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 309
    const-string v5, "LauncherFacade::ID"

    const-string v8, "[SPRINT]InitPref: Unable to initilize table"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v5, "initPref"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    :cond_2
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, "numScreen_HomeApps":I
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_3

    if-nez v1, :cond_4

    .line 314
    :cond_3
    const-string v5, "LauncherFacade::ID"

    const-string v7, "[SPRINT]InitPref: Unable to initilize table"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v5, "initPref"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 317
    :cond_4
    const-string v5, "LauncherFacade::ID"

    const-string v6, "[SPRINT] Init pref table "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/LauncherProviderID;->initPreferences(Landroid/content/Context;)V

    .line 319
    const-string v5, "initPref"

    invoke-virtual {v2, v5, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 284
    :sswitch_data_0
    .sparse-switch
        -0x4586cc79 -> :sswitch_1
        0xffe7353 -> :sswitch_3
        0x12f4cc67 -> :sswitch_0
        0x519ad93f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createPrefsTable()V
    .locals 2

    .prologue
    .line 98
    const-string v0, "LauncherFacade::ID"

    const-string v1, "[SPRINT] creating pref table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "CREATE TABLE IF NOT EXISTS prefs(key TEXT PRIMARY KEY, value INTEGER, modified INTEGER );"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v1

    .line 266
    .local v1, "provider":Lcom/android/launcher3/LauncherProvider;
    sget-object v3, Lcom/android/launcher3/LauncherProviderID;->CONTENT_APPWIDGET_UNBIND_URI:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 267
    const-string v3, "LauncherFacade::ID"

    const-string v4, "Unbinding widget"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x400

    invoke-direct {v0, v3, v4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 269
    .local v0, "awh":Landroid/appwidget/AppWidgetHost;
    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 270
    const/4 v2, 0x1

    .line 275
    .end local v0    # "awh":Landroid/appwidget/AppWidgetHost;
    :cond_0
    :goto_0
    return v2

    .line 272
    :cond_1
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public deleteTable()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "LauncherFacade::ID"

    const-string v1, "[SPRINT] dropping pref table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    sget-object v0, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "DROP TABLE IF EXISTS prefs"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public getScreenIndex()I
    .locals 6

    .prologue
    .line 386
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v2

    const-string v3, "prefs"

    .line 387
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 388
    const-string v2, "LauncherFacade::ID"

    const-string v3, "[SPRINT] getScreenIndex() Pref does not exist. Creating one"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->createPrefsTable()V

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/LauncherProviderID;->initPreferences(Landroid/content/Context;)V

    .line 392
    :cond_0
    const/4 v0, 0x0

    .line 394
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT value FROM prefs WHERE key=\'defaultScreen_HomeApps\'"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 397
    const-string v2, "LauncherFacade::ID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SPRINT] index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    long-to-int v2, v2

    .line 403
    if-eqz v0, :cond_1

    .line 404
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_1
    :goto_0
    return v2

    .line 403
    :cond_2
    if-eqz v0, :cond_3

    .line 404
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_3
    :goto_1
    const-string v2, "LauncherFacade::ID"

    const-string v3, "[SPRINT] Unable to get screen index. Getting from shared preferences, instead"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v2

    goto :goto_0

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "LauncherFacade::ID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SPRINT] Could not get screen index from Prefs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    if-eqz v0, :cond_3

    .line 404
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 403
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_4

    .line 404
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    .line 129
    .local v0, "provider":Lcom/android/launcher3/LauncherProvider;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Lcom/android/launcher3/LauncherProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initPreferences(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 414
    const-string v5, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {p1, v5}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 415
    .local v1, "homeDefaultPageKey_HomeApps":I
    const-string v5, "LauncherFacade::ID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SPRINT] Current Default Page index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getworkSpaceScreensTable()Ljava/lang/String;

    move-result-object v4

    .line 420
    .local v4, "tableName":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 421
    const-string v5, "LauncherFacade::ID"

    const-string v6, "[SPRINT]Unable to get screen tableName , init failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v2

    .line 427
    .local v2, "numScreen_HomeApps":I
    const-string v5, "LauncherFacade::ID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SPRINT] Current Page count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "prefs"

    .line 430
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 431
    const-string v5, "LauncherFacade::ID"

    const-string v6, "[SPRINT] Pref does not exist. Unable to init"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_1
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 437
    :try_start_0
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "insert into prefs values(?, ?, ?)"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 440
    .local v3, "statement":Landroid/database/sqlite/SQLiteStatement;
    const/4 v5, 0x1

    const-string v6, "defaultScreen_HomeApps"

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 441
    const/4 v5, 0x2

    int-to-long v6, v1

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 442
    const/4 v5, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 443
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 445
    const/4 v5, 0x1

    const-string v6, "numScreens_HomeApps"

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 446
    const/4 v5, 0x2

    int-to-long v6, v2

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 447
    const/4 v5, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 448
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 450
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 451
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 457
    .end local v3    # "statement":Landroid/database/sqlite/SQLiteStatement;
    :goto_1
    const-string v5, "LauncherFacade::ID"

    const-string v6, "[SPRINT] init pref table DONE"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "LauncherFacade::ID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SPRINT] error while init pref table: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    .line 139
    .local v0, "provider":Lcom/android/launcher3/LauncherProvider;
    if-nez v0, :cond_1

    move-object v1, v2

    .line 163
    :cond_0
    :goto_0
    return-object v1

    .line 142
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/LauncherProviderID;->initValues(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 143
    sget-object v3, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v3, p1, p2}, Lcom/android/launcher3/LauncherProviderID;->handleWidget(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 144
    .local v1, "wUri":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 148
    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const-string v3, "widgetPkgName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 152
    :cond_2
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 153
    const-string v3, "widgetClsName"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 156
    :cond_3
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_4

    .line 157
    const-string v3, "LauncherFacade::ID"

    const-string v4, "[SPRINT] Error: Unable to get row ID"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 158
    goto :goto_0

    .line 161
    :cond_4
    const-string v2, "LauncherFacade::ID"

    const-string v3, "About to insert"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/LauncherProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->setLauncherProviderID(Lcom/android/launcher3/LauncherProviderID;)V

    .line 94
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;
    .param p5, "sortBy"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    .line 109
    .local v0, "provider":Lcom/android/launcher3/LauncherProvider;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 110
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/LauncherProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    .line 119
    .local v0, "provider":Lcom/android/launcher3/LauncherProvider;
    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateScreenCount()V
    .locals 8

    .prologue
    .line 329
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    const-string v6, "prefs"

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    :goto_0
    return-void

    .line 332
    :cond_0
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 334
    :try_start_0
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "UPDATE prefs SET value=?, modified=? WHERE key=?"

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 338
    .local v4, "update":Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProviderID;->getworkSpaceScreensTable()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "tableName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 340
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->getItemCount(Ljava/lang/String;)I

    move-result v5

    int-to-long v0, v5

    .line 342
    .local v0, "count":J
    const-string v5, "LauncherFacade::ID"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SPRINT] updating count to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 344
    const/4 v5, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 345
    const/4 v5, 0x3

    const-string v6, "numScreens_HomeApps"

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 346
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 347
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 348
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v0    # "count":J
    :goto_1
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 350
    :cond_1
    :try_start_1
    const-string v5, "LauncherFacade::ID"

    const-string v6, "[SPRINT]unable to update screen count"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 352
    .end local v3    # "tableName":Ljava/lang/String;
    .end local v4    # "update":Landroid/database/sqlite/SQLiteStatement;
    :catch_0
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "LauncherFacade::ID"

    const-string v6, "[SPRINT] ERROR while updating screen count"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public updateScreenIndex()V
    .locals 8

    .prologue
    .line 362
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    const-string v5, "prefs"

    .line 363
    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 381
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v4, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 366
    :try_start_0
    sget-object v4, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "UPDATE prefs SET value=?, modified=? WHERE key=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 368
    .local v1, "update":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProviderID;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 369
    .local v2, "index":J
    const-string v4, "LauncherFacade::ID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[SPRINT] updating index to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 371
    const/4 v4, 0x2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 372
    const/4 v4, 0x3

    const-string v5, "defaultScreen_HomeApps"

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 373
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 374
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 375
    sget-object v4, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    sget-object v4, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 376
    .end local v1    # "update":Landroid/database/sqlite/SQLiteStatement;
    .end local v2    # "index":J
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "LauncherFacade::ID"

    const-string v5, "[SPRINT] ERROR while updating screen index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 379
    sget-object v4, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/android/launcher3/LauncherProviderID;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method
