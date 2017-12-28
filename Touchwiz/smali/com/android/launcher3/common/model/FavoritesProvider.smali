.class public Lcom/android/launcher3/common/model/FavoritesProvider;
.super Lcom/android/launcher3/common/model/DataProvider;
.source "FavoritesProvider.java"

# interfaces
.implements Lcom/android/launcher3/common/model/DataProvider$DataInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;,
        Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;
    }
.end annotation


# static fields
.field private static final CHECK_CHANGED_COMPONENT_EXITST:Ljava/lang/String; = "checkChangedComponentVersion"

.field private static final CLOCK_WIDGET_EASY_PACKAGE:Ljava/lang/String; = "com.sec.android.daemonapp"

.field private static final CONTACT_WIDGET_EASY_CLASS:Ljava/lang/String; = "com.sec.android.widgetapp.easymodecontactswidget.SeniorFavoriteWidgetProviderLarge"

.field private static final CONTACT_WIDGET_EASY_PACKAGE:Ljava/lang/String; = "com.sec.android.widgetapp.easymodecontactswidget"

.field private static final DALI_PAGE_SETTING_DB:Ljava/lang/String; = "pagesettings.db"

.field private static final DEBUGGABLE:Z = true

.field private static final EASY_LAUNCHER_DB:Ljava/lang/String; = "easylauncher.db"

.field private static final EASY_MODE_GRID:I = 0x3

.field private static final EASY_MODE_PREFERENCE_FILE:Ljava/lang/String; = "com.sec.android.app.easylauncher.prefs.xml"

.field private static final EASY_MODE_PREFERENCE_KEY:Ljava/lang/String; = "com.sec.android.app.easylauncher.prefs"

.field public static final EMPTY_DATABASE_SWITCHED:Ljava/lang/String; = "EMPTY_DATABASE_SWITCHED"

.field private static final GRID_INFO_SPLIT:Ljava/lang/String; = "\\|"

.field private static final HOME_INDEX_EASY_MODE:I = 0x2

.field public static final SWITCH_EASY_MODE:I = 0x2

.field public static final SWITCH_HOME_MODE:I = 0x1

.field public static final SWITCH_HOME_MODE_ON_EASY:I = 0x3

.field private static final TABLE_APPORDER:Ljava/lang/String; = "appOrder"

.field private static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field private static final TABLE_FAVORITES_EASY:Ljava/lang/String; = "favorites_easy"

.field private static final TABLE_FAVORITES_HOME_APPS:Ljava/lang/String; = "favorites_homeApps"

.field private static final TABLE_FAVORITES_HOME_ONLY:Ljava/lang/String; = "favorites_homeOnly"

.field private static final TABLE_FAVORITES_STANDARD:Ljava/lang/String; = "favorites_standard"

.field private static final TABLE_WORKSPACE_SCREENS:Ljava/lang/String; = "workspaceScreens"

.field private static final TABLE_WORKSPACE_SCREENS_EASY:Ljava/lang/String; = "workspaceScreens_easy"

.field private static final TABLE_WORKSPACE_SCREENS_HOME_APPS:Ljava/lang/String; = "workspaceScreens_homeApps"

.field private static final TABLE_WORKSPACE_SCREENS_HOME_ONLY:Ljava/lang/String; = "workspaceScreens_homeOnly"

.field private static final TABLE_WORKSPACE_SCREENS_STANDARD:Ljava/lang/String; = "workspaceScreens_standard"

.field private static final TAG:Ljava/lang/String; = "FavoritesProvider"

.field private static final WEATHER_WIDGET_EASY_CLASS:Ljava/lang/String; = "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

.field private static final WEATHER_WIDGET_EASY_PACKAGE:Ljava/lang/String; = "com.sec.android.daemonapp"

.field private static final sInstance:Lcom/android/launcher3/common/model/FavoritesProvider;


# instance fields
.field private final mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mCountY:I

.field private mDaliPageCnt:I

.field private mMaxScreenId:J

.field private mOldZeroPageExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-direct {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;-><init>()V

    sput-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sInstance:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 137
    invoke-direct {p0}, Lcom/android/launcher3/common/model/DataProvider;-><init>()V

    .line 104
    new-instance v0, Landroid/appwidget/AppWidgetHost;

    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mCountY:I

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 134
    iput v3, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mDaliPageCnt:I

    .line 135
    iput-boolean v3, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mOldZeroPageExist:Z

    .line 138
    return-void
.end method

.method private addAppsButton(Ljava/lang/String;JJ)V
    .locals 8
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "maxID"    # J
    .param p4, "screen"    # J

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 3061
    const-string v2, "FavoritesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAppsButton tableName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screen : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3066
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    const-wide/16 v4, 0x1

    add-long/2addr p2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3067
    const-string v2, "title"

    const-string v4, "Apps"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3068
    const-string v2, "container"

    const/16 v4, -0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3069
    const-string v4, "cellX"

    move-object v2, v3

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 3070
    const-string v4, "cellY"

    move-object v2, v3

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 3071
    const-string v2, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3072
    const-string v2, "spanX"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3073
    const-string v2, "spanY"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3074
    const-string v2, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3075
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3077
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "intent"

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    const-string v4, "appWidgetProvider"

    move-object v2, v3

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 3080
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2, p1, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3081
    return-void
.end method

.method private addDataToEasyTable(Landroid/database/Cursor;IJ)V
    .locals 23
    .param p1, "cr"    # Landroid/database/Cursor;
    .param p2, "contactCount"    # I
    .param p3, "userSerial"    # J

    .prologue
    .line 2934
    if-nez p1, :cond_1

    .line 2935
    const-string v18, "FavoritesProvider"

    const-string v19, "Cursor is null!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_0
    :goto_0
    return-void

    .line 2939
    :cond_1
    const-string v18, "rowID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 2940
    .local v8, "idx_Id":I
    const-string v18, "screen"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 2941
    .local v14, "idx_screen":I
    const-string v18, "position"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 2942
    .local v13, "idx_position":I
    const-string v18, "appWidgetID"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 2943
    .local v10, "idx_appWidgetID":I
    const-string v18, "packageName"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 2944
    .local v12, "idx_packageName":I
    const-string v18, "className"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 2945
    .local v11, "idx_className":I
    const-string v18, "appIcon"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2947
    .local v9, "idx_appIcon":I
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    .line 2951
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 2952
    .local v17, "values":Landroid/content/ContentValues;
    const-string v18, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2953
    const-string v19, "title"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2955
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_2

    .line 2957
    const-string v18, "container"

    const/16 v19, -0x65

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2958
    const-string v19, "cellX"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2959
    const-string v19, "cellY"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2960
    const-string v18, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2970
    :goto_1
    const-string v18, "spanX"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2971
    const-string v18, "spanY"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2973
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    if-lez v18, :cond_9

    .line 2974
    const-string v18, "itemType"

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2975
    const-string v19, "intent"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 2976
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static/range {v18 .. v18}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 2979
    .local v5, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const-string v18, "com.sec.android.daemonapp"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2981
    const-string v18, "com.sec.android.daemonapp"

    const-string v19, "com.sec.android.daemonapp.appwidget.WeatherAppWidget"

    invoke-static/range {v18 .. v19}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 2984
    .local v6, "cn":Landroid/content/ComponentName;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 2985
    .local v4, "appWidgetId":I
    invoke-virtual {v5, v4, v6}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 2986
    const-string v18, "FavoritesProvider"

    const-string v19, "Failed to initialize external widget"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2989
    .end local v4    # "appWidgetId":I
    :catch_0
    move-exception v7

    .line 2990
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v18, "FavoritesProvider"

    const-string v19, "Failed to initialize external widget"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2962
    .end local v5    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string v18, "container"

    const/16 v19, -0x64

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2963
    const-string v18, "cellX"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    rem-int/lit8 v19, v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2964
    const-string v19, "cellY"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    div-int/lit8 v20, v18, 0x3

    .line 2965
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2966
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getSoftKeyForEasy()Z

    move-result v18

    if-eqz v18, :cond_3

    const/16 v18, 0x2

    :goto_2
    add-int v18, v18, v20

    .line 2964
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2967
    const-string v18, "screen"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    sub-int v19, v19, p2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .line 2966
    :cond_3
    const/16 v18, 0x1

    goto :goto_2

    :cond_4
    const/16 v18, 0x0

    goto :goto_2

    .line 2993
    .restart local v4    # "appWidgetId":I
    .restart local v5    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v6    # "cn":Landroid/content/ComponentName;
    :cond_5
    const-string v18, "appWidgetProvider"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const-string v18, "spanX"

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2995
    const-string v18, "spanY"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2996
    const-string v18, "cellX"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2997
    const-string v18, "cellY"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2998
    const-string v18, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3034
    .end local v4    # "appWidgetId":I
    .end local v5    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v6    # "cn":Landroid/content/ComponentName;
    :cond_6
    :goto_3
    const-string v19, "iconType"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 3035
    const-string v19, "iconPackage"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 3036
    const-string v19, "iconResource"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 3037
    const-string v18, "icon"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 3039
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "favorites_easy"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 2999
    .restart local v5    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_7
    const-string v18, "com.sec.android.widgetapp.easymodecontactswidget"

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 3000
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 3002
    .local v16, "preAppWidgetId":I
    const-string v18, "com.sec.android.widgetapp.easymodecontactswidget"

    const-string v19, "com.sec.android.widgetapp.easymodecontactswidget.SeniorFavoriteWidgetProviderLarge"

    invoke-static/range {v18 .. v19}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 3006
    .restart local v6    # "cn":Landroid/content/ComponentName;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v4

    .line 3007
    .restart local v4    # "appWidgetId":I
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 3008
    .local v15, "options":Landroid/os/Bundle;
    const-string v18, "Old_WidgetId"

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3009
    const-string v18, "New_WidgetId"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3010
    invoke-virtual {v5, v4, v6, v15}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 3011
    const-string v18, "FavoritesProvider"

    const-string v19, "Failed to initialize external widget"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 3014
    .end local v4    # "appWidgetId":I
    .end local v15    # "options":Landroid/os/Bundle;
    :catch_1
    move-exception v7

    .line 3015
    .restart local v7    # "e":Ljava/lang/RuntimeException;
    const-string v18, "FavoritesProvider"

    const-string v19, "Failed to initialize external widget"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3019
    .end local v7    # "e":Ljava/lang/RuntimeException;
    .restart local v4    # "appWidgetId":I
    .restart local v15    # "options":Landroid/os/Bundle;
    :cond_8
    const-string v18, "appWidgetProvider"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3020
    const-string v18, "spanX"

    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3021
    const-string v18, "spanY"

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3022
    const-string v18, "cellX"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3023
    const-string v18, "cellY"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3024
    const-string v18, "appWidgetId"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 3027
    .end local v4    # "appWidgetId":I
    .end local v5    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v15    # "options":Landroid/os/Bundle;
    .end local v16    # "preAppWidgetId":I
    :cond_9
    const-string v18, "itemType"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3028
    const-string v18, "intent"

    .line 3029
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3030
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3029
    invoke-static/range {v19 .. v20}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v19

    .line 3028
    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v19

    const/16 v20, 0x0

    .line 3030
    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v19

    .line 3028
    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3031
    const-string v19, "appWidgetProvider"

    const/16 v18, 0x0

    check-cast v18, Ljava/lang/Byte;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto/16 :goto_3
.end method

.method private addScreenIdIfNecessary(J)Z
    .locals 9
    .param p1, "screenId"    # J

    .prologue
    .line 1201
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->hasScreenId(J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1202
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenRank()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 1204
    .local v1, "rank":I
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1205
    .local v2, "v":Landroid/content/ContentValues;
    const-string v3, "_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1206
    const-string v3, "screenRank"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1207
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "workspaceScreens"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, v2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 1208
    const/4 v3, 0x0

    .line 1219
    .end local v1    # "rank":I
    .end local v2    # "v":Landroid/content/ContentValues;
    :goto_0
    return v3

    .line 1214
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v0

    .line 1215
    .local v0, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v0, :cond_1

    .line 1216
    const-string v3, "FavoritesProvider"

    const-string v4, "[SPRINT] Adding screen is necessary. Updating screen count"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProviderID;->updateScreenCount()V

    .line 1219
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private bindAppWidgetForHomeOnly()V
    .locals 30

    .prologue
    .line 1638
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .local v21, "removeWidgets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v26, Landroid/util/LongSparseArray;

    invoke-direct/range {v26 .. v26}, Landroid/util/LongSparseArray;-><init>()V

    .line 1640
    .local v26, "updateWidgets":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "appWidgetProvider"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "profileId"

    aput-object v5, v6, v4

    .line 1641
    .local v6, "columns":[Ljava/lang/String;
    const-string v7, "itemType=?"

    .line 1642
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1644
    .local v8, "selectionArg":[Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites_homeOnly"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 1647
    .local v17, "cursor":Landroid/database/Cursor;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v13

    .line 1648
    .local v13, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v28

    .line 1650
    .local v28, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    if-eqz v17, :cond_3

    .line 1652
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v12

    .line 1654
    .local v12, "appWidgetId":I
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 1655
    .local v22, "id":J
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1656
    .local v14, "appWidgetProvider":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1657
    .local v24, "profileId":J
    if-eqz v14, :cond_0

    .line 1658
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v15

    .line 1659
    .local v15, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v27

    .line 1660
    .local v27, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v13, v12, v4, v15, v5}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1661
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1669
    .end local v12    # "appWidgetId":I
    .end local v14    # "appWidgetProvider":Ljava/lang/String;
    .end local v15    # "cn":Landroid/content/ComponentName;
    .end local v22    # "id":J
    .end local v24    # "profileId":J
    .end local v27    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catchall_0
    move-exception v4

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1663
    .restart local v12    # "appWidgetId":I
    .restart local v14    # "appWidgetProvider":Ljava/lang/String;
    .restart local v15    # "cn":Landroid/content/ComponentName;
    .restart local v22    # "id":J
    .restart local v24    # "profileId":J
    .restart local v27    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    :try_start_1
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to bind app widget during copy for homeonly "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1669
    .end local v12    # "appWidgetId":I
    .end local v14    # "appWidgetProvider":Ljava/lang/String;
    .end local v15    # "cn":Landroid/content/ComponentName;
    .end local v22    # "id":J
    .end local v24    # "profileId":J
    .end local v27    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 1673
    :cond_3
    new-instance v29, Landroid/content/ContentValues;

    invoke-direct/range {v29 .. v29}, Landroid/content/ContentValues;-><init>()V

    .line 1674
    .local v29, "values":Landroid/content/ContentValues;
    invoke-virtual/range {v26 .. v26}, Landroid/util/LongSparseArray;->size()I

    move-result v16

    .line 1675
    .local v16, "count":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 1676
    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    .line 1677
    .local v18, "dbId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1678
    invoke-virtual/range {v29 .. v29}, Landroid/content/ContentValues;->clear()V

    .line 1679
    const-string v5, "appWidgetId"

    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v0, v29

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1680
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites_homeOnly"

    const/4 v9, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v4, v5, v0, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1675
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 1683
    .end local v18    # "dbId":J
    :cond_4
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bindAppWidgetForHomeOnly removeAppwidget size "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1685
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove AppWidget "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", "

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites_homeOnly"

    const-string v9, "_id"

    move-object/from16 v0, v21

    invoke-static {v9, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1689
    :cond_5
    return-void
.end method

.method private changePackageForManagedProfile(Ljava/util/HashMap;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "componentNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v13, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v12

    .line 1013
    .local v12, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    .line 1014
    .local v6, "myUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    sget-object v13, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v14, "com.sec.android.app.launcher.managedusers.prefs"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 1016
    .local v9, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    .line 1018
    .local v5, "isChangeList":Z
    invoke-virtual {v12}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 1019
    .local v10, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v6, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 1023
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v8, "home_only_installed_packages_for_user_"

    .line 1025
    .local v8, "packageSetPrefix":Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v12, v10}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1026
    .local v7, "packageSetKey":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-interface {v9, v7, v13}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 1027
    .local v11, "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v13, "FavoritesProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "changePackageForManagedProfile user package key : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    if-eqz v11, :cond_0

    .line 1029
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1030
    .local v4, "componentName":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 1031
    .local v3, "before":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1032
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1033
    .local v2, "after":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1034
    const-string v13, "FavoritesProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "changePackageForManagedProfile remove : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " add : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    .line 1035
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 1034
    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    const/4 v5, 0x1

    goto :goto_2

    .line 1023
    .end local v2    # "after":Landroid/content/ComponentName;
    .end local v3    # "before":Landroid/content/ComponentName;
    .end local v4    # "componentName":Ljava/lang/String;
    .end local v7    # "packageSetKey":Ljava/lang/String;
    .end local v8    # "packageSetPrefix":Ljava/lang/String;
    .end local v11    # "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    const-string v8, "installed_packages_for_user_"

    goto/16 :goto_1

    .line 1039
    .restart local v7    # "packageSetKey":Ljava/lang/String;
    .restart local v8    # "packageSetPrefix":Ljava/lang/String;
    .restart local v11    # "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    if-eqz v5, :cond_0

    .line 1040
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13, v7, v11}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 1044
    .end local v7    # "packageSetKey":Ljava/lang/String;
    .end local v8    # "packageSetPrefix":Ljava/lang/String;
    .end local v10    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v11    # "userApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    return-void
.end method

.method private convertAppsTable(Ljava/lang/String;I)V
    .locals 45
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "gridX"    # I

    .prologue
    .line 588
    const/16 v33, 0x0

    .line 590
    .local v33, "ti":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v34

    .line 592
    .local v34, "maxId":J
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 593
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "appOrder"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "folderId, screen, cell"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 595
    if-nez v33, :cond_1

    .line 596
    const-string v2, "FavoritesProvider"

    const-string v3, "AppsTable converting error : Getting app order list item"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 700
    if-eqz v33, :cond_0

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 705
    .end local v34    # "maxId":J
    :cond_0
    :goto_0
    return-void

    .line 600
    .restart local v34    # "maxId":J
    :cond_1
    :try_start_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 601
    const-string v2, "_id"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 602
    .local v25, "idx_Id":I
    const-string v2, "folderId"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 603
    .local v28, "idx_folderId":I
    const-string v2, "screen"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v31

    .line 604
    .local v31, "idx_screen":I
    const-string v2, "title"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 605
    .local v32, "idx_title":I
    const-string v2, "componentName"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v26

    .line 608
    .local v26, "idx_cn":I
    :try_start_2
    const-string v2, "color"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    .line 615
    .local v27, "idx_color":I
    :goto_1
    :try_start_3
    const-string v2, "profileId"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v30

    .line 619
    .local v30, "idx_profileId":I
    :goto_2
    :try_start_4
    const-string v2, "hidden"

    move-object/from16 v0, v33

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 621
    .local v29, "idx_hidden":I
    new-instance v21, Landroid/util/LongSparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/LongSparseArray;-><init>()V

    .line 623
    .local v21, "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    const-wide/16 v18, -0x66

    .line 624
    .local v18, "container":J
    const-wide/16 v38, 0x0

    .line 625
    .local v38, "prevScreen":J
    const-wide/16 v36, -0x1

    .line 626
    .local v36, "prevFolder":J
    const-wide/16 v42, 0x0

    .line 627
    .local v42, "rank":J
    const-wide/16 v12, -0x1

    .local v12, "cellX":J
    const-wide/16 v14, 0x0

    .line 632
    .local v14, "cellY":J
    :cond_2
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 633
    .local v44, "values":Landroid/content/ContentValues;
    const-string v2, "_id"

    const-wide/16 v4, 0x1

    add-long v34, v34, v4

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 634
    const-string v2, "title"

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 637
    .local v10, "_id":J
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 638
    .local v16, "cn":Ljava/lang/String;
    move-object/from16 v0, v33

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 639
    .local v22, "folderId":J
    move-object/from16 v0, v33

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 640
    .local v24, "hidden":I
    if-lez v30, :cond_8

    .line 641
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v40, v0

    .line 646
    .local v40, "profileId":J
    :goto_3
    if-lez v27, :cond_9

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 648
    .local v17, "color":I
    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 649
    const-string v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 658
    :goto_5
    const-wide/16 v2, 0x0

    cmp-long v2, v22, v2

    if-lez v2, :cond_3

    .line 660
    invoke-virtual/range {v21 .. v23}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 662
    :cond_3
    const-string v2, "container"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 664
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v38

    if-nez v2, :cond_4

    const-wide/16 v2, -0x1

    cmp-long v2, v22, v2

    if-eqz v2, :cond_5

    :cond_4
    cmp-long v2, v22, v36

    if-nez v2, :cond_b

    .line 667
    :cond_5
    const-wide/16 v2, 0x1

    add-long v42, v42, v2

    .line 668
    const-wide/16 v2, 0x1

    add-long/2addr v12, v2

    .line 670
    move/from16 v0, p2

    int-to-long v2, v0

    cmp-long v2, v12, v2

    if-ltz v2, :cond_6

    .line 671
    const-wide/16 v2, 0x1

    add-long/2addr v14, v2

    .line 672
    const-wide/16 v12, 0x0

    .line 683
    :cond_6
    :goto_6
    const-string v2, "screen"

    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 684
    const-string v2, "cellX"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 685
    const-string v2, "cellY"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 686
    const-string v2, "rank"

    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 687
    const-string v2, "hidden"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    const-string v2, "profileId"

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 689
    const-string v2, "color"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 690
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 691
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 693
    .end local v10    # "_id":J
    .end local v12    # "cellX":J
    .end local v14    # "cellY":J
    .end local v16    # "cn":Ljava/lang/String;
    .end local v17    # "color":I
    .end local v18    # "container":J
    .end local v21    # "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .end local v22    # "folderId":J
    .end local v24    # "hidden":I
    .end local v25    # "idx_Id":I
    .end local v26    # "idx_cn":I
    .end local v27    # "idx_color":I
    .end local v28    # "idx_folderId":I
    .end local v29    # "idx_hidden":I
    .end local v30    # "idx_profileId":I
    .end local v31    # "idx_screen":I
    .end local v32    # "idx_title":I
    .end local v36    # "prevFolder":J
    .end local v38    # "prevScreen":J
    .end local v40    # "profileId":J
    .end local v42    # "rank":J
    .end local v44    # "values":Landroid/content/ContentValues;
    :cond_7
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 694
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 698
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 700
    if-eqz v33, :cond_0

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 609
    .restart local v25    # "idx_Id":I
    .restart local v26    # "idx_cn":I
    .restart local v28    # "idx_folderId":I
    .restart local v31    # "idx_screen":I
    .restart local v32    # "idx_title":I
    :catch_0
    move-exception v20

    .line 610
    .local v20, "e":Ljava/lang/IllegalArgumentException;
    const/16 v27, -0x1

    .restart local v27    # "idx_color":I
    goto/16 :goto_1

    .line 616
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v20

    .line 617
    .restart local v20    # "e":Ljava/lang/IllegalArgumentException;
    const/16 v30, -0x1

    .restart local v30    # "idx_profileId":I
    goto/16 :goto_2

    .line 643
    .end local v20    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "_id":J
    .restart local v12    # "cellX":J
    .restart local v14    # "cellY":J
    .restart local v16    # "cn":Ljava/lang/String;
    .restart local v18    # "container":J
    .restart local v21    # "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v22    # "folderId":J
    .restart local v24    # "hidden":I
    .restart local v29    # "idx_hidden":I
    .restart local v36    # "prevFolder":J
    .restart local v38    # "prevScreen":J
    .restart local v42    # "rank":J
    .restart local v44    # "values":Landroid/content/ContentValues;
    :cond_8
    const-wide/16 v40, 0x0

    .restart local v40    # "profileId":J
    goto/16 :goto_3

    .line 646
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 652
    .restart local v17    # "color":I
    :cond_a
    :try_start_5
    const-string v2, "itemType"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 653
    const-string v2, "intent"

    .line 654
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 653
    move-wide/from16 v0, v40

    invoke-static {v3, v0, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    .line 655
    invoke-virtual {v3, v4}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    .line 653
    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    .line 695
    .end local v10    # "_id":J
    .end local v12    # "cellX":J
    .end local v14    # "cellY":J
    .end local v16    # "cn":Ljava/lang/String;
    .end local v17    # "color":I
    .end local v18    # "container":J
    .end local v21    # "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .end local v22    # "folderId":J
    .end local v24    # "hidden":I
    .end local v25    # "idx_Id":I
    .end local v26    # "idx_cn":I
    .end local v27    # "idx_color":I
    .end local v28    # "idx_folderId":I
    .end local v29    # "idx_hidden":I
    .end local v30    # "idx_profileId":I
    .end local v31    # "idx_screen":I
    .end local v32    # "idx_title":I
    .end local v34    # "maxId":J
    .end local v36    # "prevFolder":J
    .end local v38    # "prevScreen":J
    .end local v40    # "profileId":J
    .end local v42    # "rank":J
    .end local v44    # "values":Landroid/content/ContentValues;
    :catch_2
    move-exception v20

    .line 696
    .local v20, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppsTable converting error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 698
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 700
    if-eqz v33, :cond_0

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 701
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 676
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v10    # "_id":J
    .restart local v12    # "cellX":J
    .restart local v14    # "cellY":J
    .restart local v16    # "cn":Ljava/lang/String;
    .restart local v17    # "color":I
    .restart local v18    # "container":J
    .restart local v21    # "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .restart local v22    # "folderId":J
    .restart local v24    # "hidden":I
    .restart local v25    # "idx_Id":I
    .restart local v26    # "idx_cn":I
    .restart local v27    # "idx_color":I
    .restart local v28    # "idx_folderId":I
    .restart local v29    # "idx_hidden":I
    .restart local v30    # "idx_profileId":I
    .restart local v31    # "idx_screen":I
    .restart local v32    # "idx_title":I
    .restart local v34    # "maxId":J
    .restart local v36    # "prevFolder":J
    .restart local v38    # "prevScreen":J
    .restart local v40    # "profileId":J
    .restart local v42    # "rank":J
    .restart local v44    # "values":Landroid/content/ContentValues;
    :cond_b
    :try_start_7
    move-object/from16 v0, v33

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v38

    .line 677
    move-wide/from16 v36, v22

    .line 678
    const-wide/16 v42, 0x0

    .line 679
    const-wide/16 v12, 0x0

    .line 680
    const-wide/16 v14, 0x0

    goto/16 :goto_6

    .line 698
    .end local v10    # "_id":J
    .end local v12    # "cellX":J
    .end local v14    # "cellY":J
    .end local v16    # "cn":Ljava/lang/String;
    .end local v17    # "color":I
    .end local v18    # "container":J
    .end local v21    # "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    .end local v22    # "folderId":J
    .end local v24    # "hidden":I
    .end local v25    # "idx_Id":I
    .end local v26    # "idx_cn":I
    .end local v27    # "idx_color":I
    .end local v28    # "idx_folderId":I
    .end local v29    # "idx_hidden":I
    .end local v30    # "idx_profileId":I
    .end local v31    # "idx_screen":I
    .end local v32    # "idx_title":I
    .end local v34    # "maxId":J
    .end local v36    # "prevFolder":J
    .end local v38    # "prevScreen":J
    .end local v40    # "profileId":J
    .end local v42    # "rank":J
    .end local v44    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 700
    if-eqz v33, :cond_c

    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    .line 701
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2
.end method

.method private copyAppsItemsToHome(Ljava/util/ArrayList;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1786
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    const-string v5, "AppsController.ViewType"

    .line 1787
    .local v5, "APPS_VIEW_TYPE":Ljava/lang/String;
    const-string v6, "CUSTOM_GRID"

    .line 1788
    .local v6, "CUSTOM_GRID":Ljava/lang/String;
    const-string v4, "ALPHABETIC_GRID"

    .line 1790
    .local v4, "ALPHABETIC_GRID":Ljava/lang/String;
    new-instance v14, Landroid/util/LongSparseArray;

    invoke-direct {v14}, Landroid/util/LongSparseArray;-><init>()V

    .line 1791
    .local v14, "folderChildList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    .line 1792
    .local v15, "folderIdMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1793
    .local v7, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1794
    .local v18, "hiddenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    sget-object v35, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 1795
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x0

    .line 1794
    invoke-virtual/range {v35 .. v37}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1796
    .local v31, "prefs":Landroid/content/SharedPreferences;
    const-string v35, "AppsController.ViewType"

    const-string v36, "CUSTOM_GRID"

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 1798
    .local v34, "viewType":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v7, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->makeCopyItemList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    .line 1800
    const-string v35, "ALPHABETIC_GRID"

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 1801
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->sortAlphabeticalOrder(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V

    .line 1804
    :cond_0
    const-string v35, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v22

    .line 1806
    .local v22, "itemId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenId()J

    move-result-wide v24

    .line 1807
    .local v24, "maxScreenId":J
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenRank()I

    move-result v26

    .line 1808
    .local v26, "maxScreenRank":I
    const/16 v35, 0x2

    move/from16 v0, v35

    new-array v10, v0, [I

    .line 1809
    .local v10, "cellXY":[I
    sget-object v35, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v35

    invoke-static {v0, v10}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    .line 1810
    const/16 v27, 0x1

    .line 1812
    .local v27, "needScreenAdd":Z
    const/4 v8, 0x0

    .line 1813
    .local v8, "cellX":I
    const/4 v11, 0x0

    .line 1814
    .local v11, "cellY":I
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1816
    .local v30, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_1

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1817
    .local v20, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v36, 0x1

    add-long v22, v22, v36

    .line 1818
    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1819
    const-wide/16 v36, -0x1

    move-wide/from16 v0, v36

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1820
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1821
    .local v33, "values":Landroid/content/ContentValues;
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1822
    sget-object v32, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1823
    .local v32, "uri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1826
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "uri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_1
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_5

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1827
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v27, :cond_2

    .line 1828
    const-wide/16 v36, 0x1

    add-long v24, v24, v36

    .line 1829
    add-int/lit8 v26, v26, 0x1

    .line 1830
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1831
    .restart local v33    # "values":Landroid/content/ContentValues;
    const-string v36, "_id"

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1832
    const-string v36, "screenRank"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v37, "workspaceScreens_homeOnly"

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1834
    const/16 v27, 0x0

    .line 1837
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_2
    const-wide/16 v36, 0x1

    add-long v22, v22, v36

    .line 1838
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v36, v0

    if-eqz v36, :cond_3

    .line 1839
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v36, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v38

    move-wide/from16 v0, v36

    move-object/from16 v2, v38

    invoke-virtual {v15, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1843
    :cond_3
    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1844
    move-wide/from16 v0, v24

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 1845
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "cellX":I
    .local v9, "cellX":I
    move-object/from16 v0, v20

    iput v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 1846
    move-object/from16 v0, v20

    iput v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 1847
    const/16 v36, 0x1

    move/from16 v0, v36

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v0, v36

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    .line 1849
    const/16 v36, 0x0

    aget v36, v10, v36

    move/from16 v0, v36

    if-ne v9, v0, :cond_8

    .line 1850
    const/4 v8, 0x0

    .line 1851
    .end local v9    # "cellX":I
    .restart local v8    # "cellX":I
    add-int/lit8 v11, v11, 0x1

    .line 1853
    :goto_2
    const/16 v36, 0x1

    aget v36, v10, v36

    move/from16 v0, v36

    if-ne v11, v0, :cond_4

    .line 1854
    const/4 v11, 0x0

    .line 1855
    const/16 v27, 0x1

    .line 1858
    :cond_4
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1859
    .restart local v33    # "values":Landroid/content/ContentValues;
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1860
    sget-object v32, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1861
    .restart local v32    # "uri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1864
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "uri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_5
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    invoke-virtual {v14}, Landroid/util/LongSparseArray;->size()I

    move-result v35

    move/from16 v0, v19

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 1865
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    .line 1866
    .local v16, "folderId":J
    invoke-virtual/range {v15 .. v17}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Long;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    .line 1868
    .local v28, "newFolderId":J
    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 1869
    .local v21, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v21, :cond_6

    .line 1871
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v36

    if-eqz v36, :cond_6

    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 1872
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    const-wide/16 v36, 0x1

    add-long v22, v22, v36

    .line 1873
    move-wide/from16 v0, v22

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    .line 1874
    move-wide/from16 v0, v28

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    .line 1876
    new-instance v33, Landroid/content/ContentValues;

    invoke-direct/range {v33 .. v33}, Landroid/content/ContentValues;-><init>()V

    .line 1877
    .restart local v33    # "values":Landroid/content/ContentValues;
    sget-object v36, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/base/item/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 1879
    sget-object v32, Lcom/android/launcher3/common/model/LauncherSettings$Favorites_HomeOnly;->CONTENT_URI:Landroid/net/Uri;

    .line 1880
    .restart local v32    # "uri":Landroid/net/Uri;
    invoke-static/range {v32 .. v32}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v36

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1864
    .end local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v32    # "uri":Landroid/net/Uri;
    .end local v33    # "values":Landroid/content/ContentValues;
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 1884
    .end local v16    # "folderId":J
    .end local v21    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .end local v28    # "newFolderId":J
    :cond_7
    sget-object v35, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 1886
    .local v12, "cr":Landroid/content/ContentResolver;
    :try_start_0
    const-string v35, "com.sec.android.app.launcher.settings"

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1890
    :goto_5
    return-void

    .line 1887
    :catch_0
    move-exception v13

    .line 1888
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .end local v8    # "cellX":I
    .end local v12    # "cr":Landroid/content/ContentResolver;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "i":I
    .restart local v9    # "cellX":I
    .restart local v20    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_8
    move v8, v9

    .end local v9    # "cellX":I
    .restart local v8    # "cellX":I
    goto/16 :goto_2
.end method

.method private copyPreferenceForHomeOnly()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, -0x1

    .line 2131
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.managedusers.prefs"

    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2133
    .local v1, "prefs":Landroid/content/SharedPreferences;
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v5

    .line 2134
    .local v5, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-virtual {v5}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v4

    .line 2135
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/UserHandleCompat;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/compat/UserHandleCompat;

    .line 2136
    .local v3, "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2139
    invoke-virtual {v5, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    .line 2140
    .local v6, "userSerialNumber":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "user_folder_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2141
    .local v0, "folderKey":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2142
    const-string v9, "FavoritesProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "copy user folder id & package list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2144
    .local v2, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "home_only_user_folder_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 2145
    invoke-interface {v1, v0, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 2144
    invoke-interface {v2, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2146
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "home_only_installed_packages_for_user_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "installed_packages_for_user_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 2147
    invoke-interface {v1, v10, v11}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v10

    .line 2146
    invoke-interface {v2, v9, v10}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 2148
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    .line 2152
    .end local v0    # "folderKey":Ljava/lang/String;
    .end local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "profileUser":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v6    # "userSerialNumber":J
    :cond_1
    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v9, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v8, v9, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2154
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 2155
    .restart local v2    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "Workspace.HomeOnly.CellX"

    const-string v9, "Workspace.CellX"

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2156
    const-string v8, "Workspace.HomeOnly.CellY"

    const-string v9, "Workspace.CellY"

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-interface {v2, v8, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2157
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2158
    return-void
.end method

.method private createFavoritesTable(JLjava/lang/String;)V
    .locals 3
    .param p1, "userSerial"    # J
    .param p3, "tableName"    # Ljava/lang/String;

    .prologue
    .line 734
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cellX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cellY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spanX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "spanY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rank"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appWidgetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appWidgetProvider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconPackage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iconResource"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TEXT,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " BLOB,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "restored"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "profileId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER DEFAULT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT -1,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "newCue"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "festival"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 762
    return-void
.end method

.method private createScreensTable(Ljava/lang/String;)V
    .locals 3
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 765
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CREATE TABLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER PRIMARY KEY,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "screenRank"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "modified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 771
    return-void
.end method

.method private getColumnList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v0, "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    const-string v1, "title"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 809
    const-string v1, "container"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    const-string v1, "screen"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    const-string v1, "cellX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    const-string v1, "cellY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 813
    const-string v1, "spanX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    const-string v1, "spanY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    const-string v1, "itemType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    const-string v1, "rank"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    const-string v1, "appWidgetProvider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    const-string v1, "iconType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    const-string v1, "iconPackage"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 822
    const-string v1, "iconResource"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    const-string v1, "modified"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    const-string v1, "restored"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    const-string v1, "profileId"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    const-string v1, "newCue"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    const-string v1, "festival"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    const-string v1, "lock"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    return-object v0
.end method

.method private getHideItems(Ljava/util/HashSet;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1275
    .local p1, "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "profileId"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "hidden"

    aput-object v3, v4, v2

    .line 1278
    .local v4, "columns":[Ljava/lang/String;
    const-string v5, "hidden != ?"

    .line 1279
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1280
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1282
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1284
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_2

    .line 1286
    :try_start_0
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1287
    .local v18, "intentIndex":I
    const-string v2, "profileId"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    .line 1288
    .local v19, "profileIndex":I
    const-string v2, "hidden"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1289
    .local v13, "hiddenIndex":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1290
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v14, v2

    .line 1291
    .local v14, "hiddenFlag":J
    const-wide/16 v2, 0x2

    and-long/2addr v2, v14

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-eqz v2, :cond_0

    .line 1292
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1293
    .local v17, "intentDescription":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 1296
    move/from16 v0, v19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v20

    .line 1299
    .local v20, "profile":J
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 1305
    .local v16, "intent":Landroid/content/Intent;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1306
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1307
    .local v11, "componentAndProfile":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1311
    .end local v11    # "componentAndProfile":Ljava/lang/String;
    .end local v13    # "hiddenIndex":I
    .end local v14    # "hiddenFlag":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v18    # "intentIndex":I
    .end local v19    # "profileIndex":I
    .end local v20    # "profile":J
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1300
    .restart local v13    # "hiddenIndex":I
    .restart local v14    # "hiddenFlag":J
    .restart local v17    # "intentDescription":Ljava/lang/String;
    .restart local v18    # "intentIndex":I
    .restart local v19    # "profileIndex":I
    .restart local v20    # "profile":J
    :catch_0
    move-exception v12

    .line 1301
    .local v12, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1311
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .end local v14    # "hiddenFlag":J
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v20    # "profile":J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1314
    .end local v13    # "hiddenIndex":I
    .end local v18    # "intentIndex":I
    .end local v19    # "profileIndex":I
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;
    .locals 2

    .prologue
    .line 141
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FavoritesProvider inited before app context set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sInstance:Lcom/android/launcher3/common/model/FavoritesProvider;

    return-object v0
.end method

.method private getMaxScreenRank()I
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 1255
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "MAX(screenRank)"

    aput-object v0, v2, v11

    .line 1258
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1261
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1262
    .local v9, "maxRankIndex":I
    const/4 v10, -0x1

    .line 1263
    .local v10, "rank":I
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1266
    :cond_0
    if-eqz v8, :cond_1

    .line 1267
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1270
    :cond_1
    return v10
.end method

.method private getSoftKeyForEasy()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3151
    iget v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mCountY:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 3152
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 3153
    .local v0, "gridInfo":[Ljava/lang/String;
    aget-object v4, v0, v3

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3154
    .local v1, "infoSplit":[Ljava/lang/String;
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mCountY:I

    .line 3156
    .end local v0    # "gridInfo":[Ljava/lang/String;
    .end local v1    # "infoSplit":[Ljava/lang/String;
    :cond_0
    iget v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mCountY:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private hasScreenId(J)Z
    .locals 13
    .param p1, "screenId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 1223
    const-string v3, "_id = ?"

    .line 1224
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v10, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v11

    .line 1225
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1228
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1229
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 1230
    .local v9, "count":I
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1231
    if-lez v9, :cond_0

    move v0, v10

    .line 1233
    .end local v9    # "count":I
    :goto_0
    return v0

    .restart local v9    # "count":I
    :cond_0
    move v0, v11

    .line 1231
    goto :goto_0

    .end local v9    # "count":I
    :cond_1
    move v0, v11

    .line 1233
    goto :goto_0
.end method

.method private insertHideItem(Ljava/lang/String;JJJ)V
    .locals 8
    .param p1, "component"    # Ljava/lang/String;
    .param p2, "container"    # J
    .param p4, "screen"    # J
    .param p6, "profile"    # J

    .prologue
    const/4 v6, 0x0

    .line 3043
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3044
    .local v3, "values":Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v0

    .line 3045
    .local v0, "id":J
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v4, p6, p7}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v2

    .line 3047
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3048
    const-string v4, "intent"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3049
    const-string v4, "container"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3050
    const-string v4, "title"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3051
    const-string v4, "screen"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3052
    const-string v4, "itemType"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3053
    const-string v4, "profileId"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3054
    const-string v4, "hidden"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3056
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites"

    invoke-virtual {p0, v4, v5, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3057
    return-void
.end method

.method private insertRemainHideItems(Ljava/util/HashMap;Z)V
    .locals 13
    .param p2, "isHomeOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1489
    .local p1, "homeItemsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    .line 1490
    .local v10, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1491
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1492
    const-wide/16 v6, 0x0

    .line 1493
    .local v6, "profile":J
    const-string v1, ""

    .line 1495
    .local v1, "component":Ljava/lang/String;
    const-string v0, ","

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1496
    .local v8, "arr":[Ljava/lang/String;
    array-length v0, v8

    const/4 v12, 0x2

    if-ne v0, v12, :cond_1

    .line 1497
    const/4 v0, 0x0

    aget-object v1, v8, v0

    .line 1498
    const/4 v0, 0x1

    aget-object v0, v8, v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1500
    :cond_1
    if-eqz p2, :cond_2

    .line 1501
    const-wide/16 v2, -0x64

    .line 1502
    .local v2, "container":J
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenId()J

    move-result-wide v4

    .local v4, "screen":J
    :goto_1
    move-object v0, p0

    .line 1507
    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->insertHideItem(Ljava/lang/String;JJJ)V

    goto :goto_0

    .line 1504
    .end local v2    # "container":J
    .end local v4    # "screen":J
    :cond_2
    const-wide/16 v2, -0x66

    .line 1505
    .restart local v2    # "container":J
    const-wide/16 v4, 0x0

    .restart local v4    # "screen":J
    goto :goto_1

    .line 1510
    .end local v1    # "component":Ljava/lang/String;
    .end local v2    # "container":J
    .end local v4    # "screen":J
    .end local v6    # "profile":J
    .end local v8    # "arr":[Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private loadChangedComponent()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 893
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v4, "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v10, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 895
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 896
    .local v6, "cmpList":[Ljava/lang/String;
    array-length v10, v6

    if-lez v10, :cond_2

    .line 897
    array-length v11, v6

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v11, :cond_2

    aget-object v5, v6, v10

    .line 898
    .local v5, "cmp":Ljava/lang/String;
    const-string v12, "\\|"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 900
    .local v7, "key":[Ljava/lang/String;
    array-length v12, v7

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 901
    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 902
    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 903
    .local v2, "before":Landroid/content/ComponentName;
    const/4 v12, 0x1

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v12

    .line 904
    const/4 v12, 0x1

    aget-object v12, v7, v12

    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 905
    .local v0, "after":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 906
    sget-object v12, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 907
    invoke-static {v12}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v8

    .line 908
    .local v8, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    .line 910
    .local v9, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v3

    .line 912
    .local v3, "beforeMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12, v9}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v1

    .line 913
    .local v1, "afterMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 914
    const/4 v12, 0x0

    aget-object v12, v7, v12

    const/4 v13, 0x1

    aget-object v13, v7, v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 918
    const/4 v12, 0x1

    aget-object v12, v7, v12

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .end local v0    # "after":Landroid/content/ComponentName;
    .end local v1    # "afterMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v2    # "before":Landroid/content/ComponentName;
    .end local v3    # "beforeMatches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v8    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v9    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 924
    .end local v5    # "cmp":Ljava/lang/String;
    .end local v7    # "key":[Ljava/lang/String;
    :cond_2
    return-object v4
.end method

.method private makeCopyItemList(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1894
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    .local p2, "hiddenItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p3, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p4, "folderChildList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v50

    .line 1895
    .local v50, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    new-instance v44, Landroid/util/LongSparseArray;

    invoke-direct/range {v44 .. v44}, Landroid/util/LongSparseArray;-><init>()V

    .line 1896
    .local v44, "folders":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    const-string v5, "container=?"

    .line 1897
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1899
    .local v6, "selectionArg":[Ljava/lang/String;
    const/16 v49, 0x0

    .line 1902
    .local v49, "maxScreen":I
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v7, 0x1

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v12, "MAX(screen)"

    aput-object v12, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1908
    .local v39, "cursor":Landroid/database/Cursor;
    if-eqz v39, :cond_1

    .line 1910
    :try_start_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1911
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v49

    .line 1914
    :cond_0
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1917
    :cond_1
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeCopyItemList max screen "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v49

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "title"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "profileId"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "color"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "options"

    aput-object v3, v4, v2

    .line 1922
    .local v4, "columns":[Ljava/lang/String;
    const/16 v45, 0x0

    .local v45, "i":I
    :goto_0
    move/from16 v0, v45

    move/from16 v1, v49

    if-gt v0, v1, :cond_7

    .line 1923
    const-string v5, "container=? AND screen=? AND hidden=?"

    .line 1925
    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    invoke-static/range {v45 .. v45}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 1926
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1927
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rank"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1930
    if-eqz v39, :cond_6

    .line 1932
    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1933
    const/4 v2, 0x2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v47

    .line 1934
    .local v47, "intentString":Ljava/lang/String;
    if-eqz v47, :cond_4

    .line 1936
    const/4 v2, 0x0

    :try_start_2
    move-object/from16 v0, v47

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v46

    .line 1937
    .local v46, "intent":Landroid/content/Intent;
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1938
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1939
    .local v11, "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1940
    .local v9, "id":J
    const/4 v2, 0x3

    .line 1941
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1940
    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    .line 1943
    .local v16, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v38, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1944
    .local v38, "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1945
    const-wide/16 v14, -0x1

    .line 1947
    .local v14, "screenRank":J
    new-instance v8, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v12, -0x64

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1949
    .local v8, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1954
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v14    # "screenRank":J
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v46    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v40

    .line 1955
    .local v40, "e":Ljava/net/URISyntaxException;
    :try_start_3
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during makeCopyItemList"

    move-object/from16 v0, v40

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1972
    .end local v40    # "e":Ljava/net/URISyntaxException;
    .end local v47    # "intentString":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1914
    .end local v4    # "columns":[Ljava/lang/String;
    .end local v45    # "i":I
    :catchall_1
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1951
    .restart local v4    # "columns":[Ljava/lang/String;
    .restart local v9    # "id":J
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    .restart local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .restart local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v45    # "i":I
    .restart local v46    # "intent":Landroid/content/Intent;
    .restart local v47    # "intentString":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This item is already exist in home : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1958
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v46    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v2, 0x0

    :try_start_5
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1959
    .restart local v9    # "id":J
    new-instance v8, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {v8}, Lcom/android/launcher3/folder/FolderInfo;-><init>()V

    .line 1960
    .local v8, "info":Lcom/android/launcher3/folder/FolderInfo;
    iput-wide v9, v8, Lcom/android/launcher3/folder/FolderInfo;->id:J

    .line 1961
    const-wide/16 v2, -0x64

    iput-wide v2, v8, Lcom/android/launcher3/folder/FolderInfo;->container:J

    .line 1962
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 1963
    const/4 v2, 0x4

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/launcher3/folder/FolderInfo;->color:I

    .line 1964
    const/4 v2, 0x5

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/launcher3/folder/FolderInfo;->options:I

    .line 1965
    move-object/from16 v0, v44

    invoke-virtual {v0, v9, v10, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1968
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1972
    .end local v8    # "info":Lcom/android/launcher3/folder/FolderInfo;
    .end local v9    # "id":J
    .end local v47    # "intentString":Ljava/lang/String;
    :cond_5
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 1922
    :cond_6
    add-int/lit8 v45, v45, 0x1

    goto/16 :goto_0

    .line 1978
    :cond_7
    invoke-virtual/range {v44 .. v44}, Landroid/util/LongSparseArray;->size()I

    move-result v41

    .line 1979
    .local v41, "folderCount":I
    const/16 v48, 0x0

    .local v48, "j":I
    :goto_2
    move/from16 v0, v48

    move/from16 v1, v41

    if-ge v0, v1, :cond_e

    .line 1980
    const/16 v36, 0x0

    .line 1981
    .local v36, "childCount":I
    const-string v5, "container=?"

    .line 1982
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v19, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v19, v2

    const/4 v2, 0x2

    const-string v3, "screen"

    aput-object v3, v19, v2

    const/4 v2, 0x3

    const-string v3, "profileId"

    aput-object v3, v19, v2

    .line 1984
    .local v19, "folderChildColumns":[Ljava/lang/String;
    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v42

    .line 1985
    .local v42, "folderId":Ljava/lang/Long;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1986
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v18, "favorites"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 1989
    if-eqz v39, :cond_c

    .line 1991
    :cond_8
    :goto_3
    :try_start_6
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1992
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v47

    .line 1993
    .restart local v47    # "intentString":Ljava/lang/String;
    if-eqz v47, :cond_8

    .line 1995
    const/4 v2, 0x0

    :try_start_7
    move-object/from16 v0, v47

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v46

    .line 1996
    .restart local v46    # "intent":Landroid/content/Intent;
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1997
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 1998
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1999
    .restart local v9    # "id":J
    const/4 v2, 0x3

    .line 2000
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1999
    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    .line 2002
    .restart local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v38, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v11, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2003
    .restart local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2004
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 2005
    .local v24, "container":J
    const/4 v2, 0x2

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 2007
    .local v26, "screenId":J
    new-instance v8, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v20, v8

    move-wide/from16 v21, v9

    move-object/from16 v23, v11

    move-object/from16 v28, v16

    invoke-direct/range {v20 .. v28}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2009
    .local v8, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    .line 2010
    .local v37, "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-nez v37, :cond_9

    .line 2011
    new-instance v37, Ljava/util/ArrayList;

    .end local v37    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 2012
    .restart local v37    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p4

    move-object/from16 v1, v37

    invoke-virtual {v0, v2, v3, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2016
    :cond_9
    move-object/from16 v0, v37

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2017
    add-int/lit8 v36, v36, 0x1

    .line 2018
    goto/16 :goto_3

    .line 2019
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v24    # "container":J
    .end local v26    # "screenId":J
    .end local v37    # "childList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_a
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This item is already exist in home : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_3

    .line 2022
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v38    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v46    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v40

    .line 2023
    .restart local v40    # "e":Ljava/net/URISyntaxException;
    :try_start_8
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during makeCopyItemList(folder child)"

    move-object/from16 v0, v40

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/16 :goto_3

    .line 2028
    .end local v40    # "e":Ljava/net/URISyntaxException;
    .end local v47    # "intentString":Ljava/lang/String;
    :catchall_2
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_b
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 2032
    :cond_c
    if-nez v36, :cond_d

    .line 2033
    move-object/from16 v0, v44

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    move-object/from16 v0, v44

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2034
    .local v43, "folderInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    if-eqz v43, :cond_d

    .line 2035
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeCopyItemList - remove empty folder : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    iget-object v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    move-object/from16 v0, p3

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2037
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 1979
    .end local v43    # "folderInfo":Lcom/android/launcher3/common/base/item/ItemInfo;
    :cond_d
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_2

    .line 2042
    .end local v19    # "folderChildColumns":[Ljava/lang/String;
    .end local v36    # "childCount":I
    .end local v42    # "folderId":Ljava/lang/Long;
    :cond_e
    const-string v5, "container=? AND hidden!=?"

    .line 2043
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    .end local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 2044
    .restart local v6    # "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v30, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v30, v2

    const/4 v2, 0x2

    const-string v3, "profileId"

    aput-object v3, v30, v2

    const/4 v2, 0x3

    const-string v3, "hidden"

    aput-object v3, v30, v2

    .line 2046
    .local v30, "hiddenColumns":[Ljava/lang/String;
    sget-object v28, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v29, "favorites"

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v31, v5

    move-object/from16 v32, v6

    invoke-virtual/range {v28 .. v35}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v39

    .line 2048
    if-eqz v39, :cond_11

    .line 2050
    :cond_f
    :goto_4
    :try_start_9
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2051
    const/4 v2, 0x1

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v47

    .line 2052
    .restart local v47    # "intentString":Ljava/lang/String;
    if-eqz v47, :cond_f

    .line 2054
    const/4 v2, 0x0

    :try_start_a
    move-object/from16 v0, v47

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v46

    .line 2055
    .restart local v46    # "intent":Landroid/content/Intent;
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 2056
    invoke-virtual/range {v46 .. v46}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 2057
    .restart local v11    # "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2058
    .restart local v9    # "id":J
    const/4 v2, 0x2

    .line 2059
    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2058
    move-object/from16 v0, v50

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v16

    .line 2061
    .restart local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    const-wide/16 v14, -0x1

    .line 2063
    .restart local v14    # "screenRank":J
    new-instance v8, Lcom/android/launcher3/common/base/item/IconInfo;

    const-wide/16 v12, -0x64

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>(JLandroid/content/ComponentName;JJLcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 2065
    .restart local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    const/4 v2, 0x3

    move-object/from16 v0, v39

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v8, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    .line 2066
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_4

    .line 2068
    .end local v8    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v9    # "id":J
    .end local v11    # "cmp":Landroid/content/ComponentName;
    .end local v14    # "screenRank":J
    .end local v16    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    .end local v46    # "intent":Landroid/content/Intent;
    :catch_2
    move-exception v40

    .line 2069
    .restart local v40    # "e":Ljava/net/URISyntaxException;
    :try_start_b
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during makeCopyItemList"

    move-object/from16 v0, v40

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_4

    .line 2074
    .end local v40    # "e":Ljava/net/URISyntaxException;
    .end local v47    # "intentString":Ljava/lang/String;
    :catchall_3
    move-exception v2

    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_10
    invoke-interface/range {v39 .. v39}, Landroid/database/Cursor;->close()V

    .line 2077
    :cond_11
    return-void
.end method

.method private makeFoldersIdToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1570
    .local p1, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Lcom/android/launcher3/util/StringJoiner;

    const-string v3, ","

    invoke-direct {v2, v3}, Lcom/android/launcher3/util/StringJoiner;-><init>(Ljava/lang/String;)V

    .line 1571
    .local v2, "joiner":Lcom/android/launcher3/util/StringJoiner;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1572
    .local v0, "folder":J
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/StringJoiner;->append(J)V

    goto :goto_0

    .line 1574
    .end local v0    # "folder":J
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private migrateSharedPrefViewTypeForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 3109
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 3110
    const-string v3, "MenuView.ViewType"

    .line 3111
    .local v3, "menuViewType":Ljava/lang/String;
    const-string v1, "AppsController.ViewType"

    .line 3112
    .local v1, "appsViewType":Ljava/lang/String;
    const-string v0, "ALPHABETIC_GRID"

    .line 3113
    .local v0, "alphabeticalGrid":Ljava/lang/String;
    const-string v2, "CUSTOM_GRID"

    .line 3115
    .local v2, "customeGrid":Ljava/lang/String;
    const-string v5, "MenuView.ViewType"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3116
    .local v4, "viewType":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, "ALPHABETIC_GRID"

    .line 3117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "CUSTOM_GRID"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3118
    :cond_0
    const-string v5, "AppsController.ViewType"

    invoke-interface {p2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3119
    const-string v5, "MenuView.ViewType"

    invoke-interface {p2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3120
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3123
    .end local v0    # "alphabeticalGrid":Ljava/lang/String;
    .end local v1    # "appsViewType":Ljava/lang/String;
    .end local v2    # "customeGrid":Ljava/lang/String;
    .end local v3    # "menuViewType":Ljava/lang/String;
    .end local v4    # "viewType":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private migrateSharedPrefsForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 3104
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateSharedPrefViewTypeForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 3105
    return-void
.end method

.method private migrateZeroPagePrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 7
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "prefsEditor"    # Landroid/content/SharedPreferences$Editor;
    .param p3, "oldPrefKey"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 3127
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 3128
    const-string v1, "home_zeropage_package_name"

    .line 3129
    .local v1, "PREFERECES_HOMEZEROPAGE_PACKAGE_NAME":Ljava/lang/String;
    const-string v0, "home_zeropage_class_name"

    .line 3130
    .local v0, "PREFERECES_HOMEZEROPAGE_CLASS_NAME":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {p1, p3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3132
    .local v3, "enabled":Z
    const-string v5, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {p2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3133
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3135
    const-string v5, "home_zeropage_package_name"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3136
    .local v4, "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3137
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mOldZeroPageExist:Z

    .line 3138
    const-string v5, "com.sec.android.app.launcher.zeropage.package.prefs"

    invoke-interface {p2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3139
    const-string v5, "home_zeropage_package_name"

    invoke-interface {p2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3141
    :cond_0
    const-string v5, "home_zeropage_class_name"

    invoke-interface {p1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3142
    .local v2, "className":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 3143
    const-string v5, "com.sec.android.app.launcher.zeropage.class.prefs"

    invoke-interface {p2, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3144
    const-string v5, "home_zeropage_class_name"

    invoke-interface {p2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3146
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3148
    .end local v0    # "PREFERECES_HOMEZEROPAGE_CLASS_NAME":Ljava/lang/String;
    .end local v1    # "PREFERECES_HOMEZEROPAGE_PACKAGE_NAME":Ljava/lang/String;
    .end local v2    # "className":Ljava/lang/String;
    .end local v3    # "enabled":Z
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private migrationAppsButton(Ljava/lang/String;)V
    .locals 12
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 491
    const-string v3, "container=-101"

    .line 492
    .local v3, "selection":Ljava/lang/String;
    const/4 v10, 0x0

    .line 494
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "MAX(screen)"

    aput-object v4, v2, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 498
    if-eqz v10, :cond_2

    .line 499
    const-wide/16 v8, -0x1

    .line 501
    .local v8, "maxScreen":J
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v6

    .line 506
    .local v6, "maxId":J
    const-wide/16 v0, 0x1

    add-long/2addr v8, v0

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->addAppsButton(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    .end local v6    # "maxId":J
    .end local v8    # "maxScreen":J
    :goto_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 517
    :cond_1
    :goto_1
    return-void

    .line 508
    :cond_2
    :try_start_1
    const-string v0, "FavoritesProvider"

    const-string v1, "migrationAppsButton cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v11

    .line 511
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "migrationAppsButton error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 513
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 514
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V
    .locals 36
    .param p1, "isDaliMigration"    # Z
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "screenTableName"    # Ljava/lang/String;
    .param p4, "userSerial"    # J
    .param p6, "convertAppOrder"    # Z

    .prologue
    .line 205
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 206
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 205
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 208
    .local v25, "prefs":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 210
    .local v30, "tempTableName":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 211
    .local v20, "escapedTableName":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 212
    .local v21, "escapedTempTableName":Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 217
    .local v19, "escapedScreenTableName":Ljava/lang/String;
    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v26

    .line 218
    .local v26, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const/16 v31, 0x0

    .line 221
    .local v31, "ti":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 223
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, v30

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 226
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v14, "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PRAGMA table_info("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 228
    if-eqz v31, :cond_2

    .line 229
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 234
    :cond_1
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 238
    :cond_2
    if-eqz p1, :cond_5

    .line 239
    const-string v4, "containerId"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 240
    const-string v4, "preview"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    const-string v4, "show"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 242
    const-string v4, "iconMode"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 243
    const-string v4, "isSystemApp"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 256
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSERT INTO "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 257
    .local v29, "sql":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .local v15, "cols":Ljava/lang/StringBuilder;
    const-string v4, ""

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const/4 v13, 0x0

    .line 261
    .local v13, "colCnt":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 262
    .local v12, "col":Ljava/lang/String;
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    add-int/lit8 v13, v13, 0x1

    .line 265
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v13, v5, :cond_3

    .line 266
    const-string v5, ", "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 366
    .end local v12    # "col":Ljava/lang/String;
    .end local v13    # "colCnt":I
    .end local v14    # "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "cols":Ljava/lang/StringBuilder;
    .end local v29    # "sql":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v31, :cond_4

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_4

    .line 367
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 246
    .restart local v14    # "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    :try_start_1
    const-string v4, "iconMovieUri"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    const-string v4, "secret"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    const-string v4, "pkgName"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 249
    const-string v4, "pkgName"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    :cond_6
    const-string v4, "timeStamp"

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    .restart local v13    # "colCnt":I
    .restart local v15    # "cols":Ljava/lang/StringBuilder;
    .restart local v29    # "sql":Ljava/lang/String;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 272
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SELECT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " FROM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 274
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 277
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DROP TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 278
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ALTER TABLE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " RENAME TO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 285
    .end local v13    # "colCnt":I
    .end local v14    # "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "cols":Ljava/lang/StringBuilder;
    .end local v29    # "sql":Ljava/lang/String;
    :goto_2
    if-eqz p6, :cond_8

    .line 286
    const-string v4, "Workspace.CellX"

    const/4 v5, 0x5

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->convertAppsTable(Ljava/lang/String;I)V

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationAppsButton(Ljava/lang/String;)V

    .line 291
    :cond_8
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v34

    .line 292
    .local v34, "widgets":Landroid/appwidget/AppWidgetManager;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 294
    .local v33, "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;>;"
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "appWidgetId"

    aput-object v7, v6, v5

    const-string v7, "appWidgetId > 0"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v31

    .line 296
    if-eqz v31, :cond_c

    .line 297
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 299
    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v4, v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v27

    .line 300
    .local v27, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v27, :cond_a

    .line 301
    move-object/from16 v0, v27

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    :cond_a
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 305
    .end local v27    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_b
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 308
    :cond_c
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/Pair;

    .line 309
    .local v23, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;"
    const-string v6, "FavoritesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " widget added."

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " SET appWidgetProvider=? WHERE appWidgetId=?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v32

    .line 313
    .local v32, "update":Landroid/database/sqlite/SQLiteStatement;
    const/4 v6, 0x1

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 314
    const/4 v6, 0x2

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, v32

    invoke-virtual {v0, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 315
    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 316
    invoke-virtual/range {v32 .. v32}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto/16 :goto_3

    .line 280
    .end local v23    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;"
    .end local v32    # "update":Landroid/database/sqlite/SQLiteStatement;
    .end local v33    # "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;>;"
    .end local v34    # "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_d
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no table exist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    goto/16 :goto_2

    .line 320
    .restart local v33    # "widgetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/ComponentName;Ljava/lang/Long;>;>;"
    .restart local v34    # "widgets":Landroid/appwidget/AppWidgetManager;
    :cond_e
    if-eqz p1, :cond_12

    .line 321
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v5, "pagesettings.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 322
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v5, "widgets.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 324
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mDaliPageCnt:I

    add-int/lit8 v24, v4, 0x1

    .line 325
    .local v24, "pageCount":I
    const-string v4, "homescreenindex"

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 345
    .local v17, "defaultPageIndex":I
    :cond_f
    :goto_4
    if-eqz p6, :cond_15

    const-string v4, "com.sec.android.app.launcher.home.defaultpage.prefs"

    :goto_5
    if-gez v17, :cond_10

    const/16 v17, 0x0

    .end local v17    # "defaultPageIndex":I
    :cond_10
    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 348
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 352
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 355
    :cond_11
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_16

    .line 356
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screenRank"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") VALUES ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ");"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 355
    add-int/lit8 v22, v22, 0x1

    goto :goto_6

    .line 327
    .end local v22    # "i":I
    .end local v24    # "pageCount":I
    :cond_12
    if-eqz p6, :cond_13

    const-string v28, "screencount"

    .line 328
    .local v28, "screenPref":Ljava/lang/String;
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v24

    .line 329
    .restart local v24    # "pageCount":I
    if-eqz p6, :cond_14

    const-string v18, "homescreenindex"

    .line 330
    .local v18, "defaultScreenPref":Ljava/lang/String;
    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 332
    .restart local v17    # "defaultPageIndex":I
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Launcher_ConfigMagazineHome"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 333
    .local v16, "cscFeatureZeroPageEnable":Ljava/lang/String;
    const-string v4, "disable"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "screencount.briefing"

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_f

    if-lez v24, :cond_f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mOldZeroPageExist:Z

    if-eqz v4, :cond_f

    .line 335
    add-int/lit8 v24, v24, -0x1

    .line 336
    add-int/lit8 v17, v17, -0x1

    .line 337
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SET "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "screen"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-1 WHERE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "container"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, -0x64

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 327
    .end local v16    # "cscFeatureZeroPageEnable":Ljava/lang/String;
    .end local v17    # "defaultPageIndex":I
    .end local v18    # "defaultScreenPref":Ljava/lang/String;
    .end local v24    # "pageCount":I
    .end local v28    # "screenPref":Ljava/lang/String;
    :cond_13
    const-string v28, "screencount.homeonly"

    goto/16 :goto_7

    .line 329
    .restart local v24    # "pageCount":I
    .restart local v28    # "screenPref":Ljava/lang/String;
    :cond_14
    const-string v18, "homescreenindex.homeonly"

    goto/16 :goto_8

    .line 345
    .end local v28    # "screenPref":Ljava/lang/String;
    .restart local v17    # "defaultPageIndex":I
    :cond_15
    const-string v4, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    goto/16 :goto_5

    .line 363
    .end local v17    # "defaultPageIndex":I
    .restart local v22    # "i":I
    :cond_16
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SET RESTORED=0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    if-eqz v31, :cond_17

    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_17

    .line 367
    invoke-interface/range {v31 .. v31}, Landroid/database/Cursor;->close()V

    .line 371
    :cond_17
    return-void
.end method

.method private migrationTableForEasyMode(J)V
    .locals 27
    .param p1, "userSerial"    # J

    .prologue
    .line 376
    const/4 v13, 0x1

    .line 379
    .local v13, "contactPlus":I
    const-string v5, "favorites_easy"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 380
    const-string v5, "workspaceScreens_easy"

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 383
    new-instance v16, Ljava/io/File;

    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v6, "easylauncher.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const-string v6, "easylauncher.db"

    move-object/from16 v0, v16

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .local v16, "file":Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 385
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v6, "easylauncher.db"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 392
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->movePrefFileForEasy()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 393
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v6, "com.sec.android.app.easylauncher.prefs"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 396
    .local v24, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "contact1_onoff"

    move-object/from16 v0, v24

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 397
    const-string v5, "contact1_onoff"

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_8

    const/4 v13, 0x1

    .line 399
    :cond_0
    :goto_0
    new-instance v19, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/shared_prefs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "com.sec.android.app.easylauncher.prefs.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 401
    .local v19, "prefFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->delete()Z

    move-result v18

    .line 402
    .local v18, "isDeleted":Z
    if-nez v18, :cond_1

    .line 403
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_MODE_PREFERENCE_FILE was not deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v18    # "isDeleted":Z
    .end local v19    # "prefFile":Ljava/io/File;
    .end local v24    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 408
    const/16 v25, 0x0

    .line 412
    .local v25, "ti":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExistsForEasy(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 413
    const-wide/16 v22, 0x0

    .line 414
    .local v22, "pageCount":J
    const-wide/16 v20, -0x1

    .line 417
    .local v20, "maxId":J
    const-string v5, "favorites"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 418
    if-eqz v25, :cond_4

    .line 419
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 421
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-wide/from16 v2, p1

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->addDataToEasyTable(Landroid/database/Cursor;IJ)V

    .line 422
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 424
    :cond_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 428
    :cond_4
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "favorites_easy"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "MAX(screen)"

    aput-object v11, v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 431
    if-nez v25, :cond_9

    .line 432
    const-string v5, "FavoritesProvider"

    const-string v6, "easylauncher converting error : NPE when getting pagecount"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 479
    if-eqz v25, :cond_5

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v18

    .line 484
    .restart local v18    # "isDeleted":Z
    if-nez v18, :cond_6

    .line 485
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_LAUNCHER_DB was not deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v18    # "isDeleted":Z
    .end local v20    # "maxId":J
    .end local v22    # "pageCount":J
    .end local v25    # "ti":Landroid/database/Cursor;
    :cond_6
    :goto_1
    return-void

    .line 387
    :cond_7
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_LAUNCHER_DB is not exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 397
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v24    # "prefs":Landroid/content/SharedPreferences;
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 436
    .end local v24    # "prefs":Landroid/content/SharedPreferences;
    .restart local v20    # "maxId":J
    .restart local v22    # "pageCount":J
    .restart local v25    # "ti":Landroid/database/Cursor;
    :cond_9
    :try_start_1
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 437
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 439
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 442
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    int-to-long v6, v0

    cmp-long v5, v6, v22

    if-gtz v5, :cond_b

    .line 445
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 446
    .local v14, "contentValues":Landroid/content/ContentValues;
    const-string v5, "_id"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    const-string v5, "screenRank"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 448
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "workspaceScreens_easy"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v14}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 442
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 452
    .end local v14    # "contentValues":Landroid/content/ContentValues;
    :cond_b
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "favorites_easy"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "MAX(_id)"

    aput-object v11, v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 455
    if-nez v25, :cond_d

    .line 456
    const-string v5, "FavoritesProvider"

    const-string v6, "easylauncher converting error : NPE when getting max id"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 477
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 479
    if-eqz v25, :cond_c

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_c

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v18

    .line 484
    .restart local v18    # "isDeleted":Z
    if-nez v18, :cond_6

    .line 485
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_LAUNCHER_DB was not deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 460
    .end local v18    # "isDeleted":Z
    :cond_d
    :try_start_2
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 461
    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 463
    .end local v20    # "maxId":J
    .local v8, "maxId":J
    :goto_3
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 465
    const-string v7, "favorites_easy"

    const-wide/16 v10, 0x2

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/launcher3/common/model/FavoritesProvider;->addAppsButton(Ljava/lang/String;JJ)V

    .line 467
    rsub-int/lit8 v5, v13, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setDefaultHomeForEasy(I)V

    .line 473
    .end local v8    # "maxId":J
    .end local v17    # "i":I
    .end local v22    # "pageCount":J
    :goto_4
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 477
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 479
    if-eqz v25, :cond_e

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_e

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v18

    .line 484
    .restart local v18    # "isDeleted":Z
    if-nez v18, :cond_6

    .line 485
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_LAUNCHER_DB was not deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 469
    .end local v18    # "isDeleted":Z
    :cond_f
    :try_start_3
    const-string v5, "FavoritesProvider"

    const-string v6, "no table exist : favorites_easy"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string v5, "favorites_easy"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 474
    :catch_0
    move-exception v15

    .line 475
    .local v15, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "FavoritesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EasyTable migration error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 477
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 479
    if-eqz v25, :cond_10

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_10

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v18

    .line 484
    .restart local v18    # "isDeleted":Z
    if-nez v18, :cond_6

    .line 485
    const-string v5, "FavoritesProvider"

    const-string v6, "EASY_LAUNCHER_DB was not deleted"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 477
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "isDeleted":Z
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 479
    if-eqz v25, :cond_11

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_11

    .line 480
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 483
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    move-result v18

    .line 484
    .restart local v18    # "isDeleted":Z
    if-nez v18, :cond_12

    .line 485
    const-string v6, "FavoritesProvider"

    const-string v7, "EASY_LAUNCHER_DB was not deleted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_12
    throw v5

    .end local v18    # "isDeleted":Z
    .restart local v17    # "i":I
    .restart local v20    # "maxId":J
    .restart local v22    # "pageCount":J
    :cond_13
    move-wide/from16 v8, v20

    .end local v20    # "maxId":J
    .restart local v8    # "maxId":J
    goto/16 :goto_3
.end method

.method private movePrefFileForEasy()Z
    .locals 6

    .prologue
    .line 3091
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/cache/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.sec.android.app.easylauncher.prefs.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3093
    .local v2, "source":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/shared_prefs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "com.sec.android.app.easylauncher.prefs.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3096
    .local v0, "dest":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3097
    .local v3, "sourceFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3099
    .local v1, "destFile":Ljava/io/File;
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    return v4
.end method

.method private prevMigrationForDali()V
    .locals 10

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 152
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE favorites ADD COLUMN screen INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v4, "pagesettings.db"

    .line 155
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 158
    .local v2, "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "SELECT _id, pageOrder FROM page_settings ORDER BY pageOrder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mDaliPageCnt:I

    .line 161
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screen=? WHERE containerId=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 163
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 162
    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 193
    .end local v2    # "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v3, "FavoritesProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prevMigrationForDali() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    .end local v1    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_1
    return-void

    .line 165
    .restart local v2    # "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    :cond_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 167
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 170
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screen=cellY*3+cellX WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET screen=cellX WHERE container=1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET container=-100 WHERE container=0"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET container=-101 WHERE container=1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET container=containerId WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE favorites SET itemType=itemType-1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 180
    const-string v3, "appOrder"

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE appOrder ADD COLUMN folderId INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 184
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE appOrder ADD COLUMN screen INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 185
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "ALTER TABLE appOrder ADD COLUMN cell INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET folderId=containerId WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 189
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET screen=pos WHERE container=3"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET screen=containerId WHERE container=2"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "UPDATE appOrder SET cell=pos WHERE container=2"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :cond_3
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 196
    .end local v2    # "pagesettingsDB":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private removeAppShortcutForHomeOnly()V
    .locals 20

    .prologue
    .line 1692
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1693
    .local v11, "appShortcutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v5, "itemType=?"

    .line 1694
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1696
    .local v6, "selectionArg":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites_homeOnly"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "intent"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string v8, "profileId"

    aput-object v8, v4, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1700
    .local v14, "cursor":Landroid/database/Cursor;
    if-eqz v14, :cond_3

    .line 1702
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v19

    .line 1703
    .local v19, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v17

    .line 1704
    .local v17, "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    :cond_0
    :goto_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1706
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v16

    .line 1707
    .local v16, "intent":Landroid/content/Intent;
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1708
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 1709
    .local v13, "cn":Landroid/content/ComponentName;
    const/4 v2, 0x2

    .line 1710
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v18

    .line 1712
    .local v18, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v12

    .line 1714
    .local v12, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    .line 1715
    .local v10, "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1716
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1721
    .end local v10    # "app":Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .end local v12    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;>;"
    .end local v13    # "cn":Landroid/content/ComponentName;
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v18    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v15

    .line 1722
    .local v15, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during removeAppShortcutForHomeOnly"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1726
    .end local v15    # "e":Ljava/net/URISyntaxException;
    .end local v17    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v19    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .restart local v17    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .restart local v19    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1730
    .end local v17    # "launcherApps":Lcom/android/launcher3/common/compat/LauncherAppsCompat;
    .end local v19    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :cond_3
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAppShortcutForHomeOnly size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1732
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove AppShortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-static {v4, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites_homeOnly"

    const-string v4, "_id"

    invoke-static {v4, v11}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v2, v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1736
    :cond_4
    return-void
.end method

.method private removeDuplicateItemForHomeOnly()Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1739
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1740
    .local v14, "duplicateItemIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    .local v12, "cmpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v20

    .line 1742
    .local v20, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    const-string v5, "itemType=?"

    .line 1743
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1744
    .local v6, "selectionArg":[Ljava/lang/String;
    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "intent"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "profileId"

    aput-object v3, v4, v2

    .line 1746
    .local v4, "columns":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites_homeOnly"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1749
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_3

    .line 1751
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 1753
    const/4 v2, 0x1

    :try_start_1
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 1754
    .local v18, "intent":Landroid/content/Intent;
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1755
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 1756
    .local v10, "cmp":Landroid/content/ComponentName;
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1757
    .local v16, "id":J
    const/4 v2, 0x2

    .line 1758
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1757
    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    .line 1760
    .local v19, "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    new-instance v11, Lcom/android/launcher3/util/ComponentKey;

    move-object/from16 v0, v19

    invoke-direct {v11, v10, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    .line 1761
    .local v11, "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1762
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1767
    .end local v10    # "cmp":Landroid/content/ComponentName;
    .end local v11    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v16    # "id":J
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :catch_0
    move-exception v15

    .line 1768
    .local v15, "e":Ljava/net/URISyntaxException;
    :try_start_2
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent during removeDuplicateItemForHomeOnly"

    invoke-static {v2, v3, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1772
    .end local v15    # "e":Ljava/net/URISyntaxException;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1764
    .restart local v10    # "cmp":Landroid/content/ComponentName;
    .restart local v11    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .restart local v16    # "id":J
    .restart local v18    # "intent":Landroid/content/Intent;
    .restart local v19    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_1
    :try_start_3
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1772
    .end local v10    # "cmp":Landroid/content/ComponentName;
    .end local v11    # "cmpKey":Lcom/android/launcher3/util/ComponentKey;
    .end local v16    # "id":J
    .end local v18    # "intent":Landroid/content/Intent;
    .end local v19    # "user":Lcom/android/launcher3/common/compat/UserHandleCompat;
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1776
    :cond_3
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "removeDuplicateItemForHomeOnly size "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1778
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove duplicate item "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", "

    invoke-static {v7, v14}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites_homeOnly"

    const-string v7, "_id"

    invoke-static {v7, v14}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1782
    :cond_4
    return-object v12
.end method

.method private setDefaultHomeForEasy(I)V
    .locals 2
    .param p1, "defaultPage"    # I

    .prologue
    .line 3084
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.launcher.homeeasy.defaultpage.prefs"

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;ILjava/lang/String;)V

    .line 3086
    return-void
.end method

.method private sortAlphabeticalOrder(Ljava/util/ArrayList;Landroid/util/LongSparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2081
    .local p1, "addItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    .local p2, "folderChildList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v5

    .line 2084
    .local v5, "iconCache":Lcom/android/launcher3/common/model/IconCache;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2085
    .local v6, "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v9, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_0

    .line 2086
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0

    .line 2090
    :cond_1
    new-instance v0, Lcom/android/launcher3/common/model/FavoritesProvider$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/FavoritesProvider$2;-><init>(Lcom/android/launcher3/common/model/FavoritesProvider;)V

    .line 2111
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2113
    invoke-virtual {p2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 2114
    .local v1, "folderChildCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_5

    .line 2115
    invoke-virtual {p2, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 2117
    .local v2, "folderId":J
    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2118
    .local v7, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    if-eqz v7, :cond_4

    .line 2120
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 2121
    .restart local v6    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    instance-of v9, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_2

    .line 2122
    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    .end local v6    # "info":Lcom/android/launcher3/common/base/item/ItemInfo;
    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/model/IconCache;->updateTitleAndIcon(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_2

    .line 2125
    :cond_3
    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2114
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2128
    .end local v2    # "folderId":J
    .end local v7    # "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/ItemInfo;>;"
    :cond_5
    return-void
.end method

.method private tableExistsForEasy(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 1069
    if-nez p1, :cond_0

    .line 1086
    :goto_0
    return v13

    .line 1073
    :cond_0
    const/4 v12, 0x0

    .line 1074
    .local v12, "exist":Z
    const-string v2, "sqlite_master"

    new-array v3, v1, [Ljava/lang/String;

    const-string v0, "tbl_name"

    aput-object v0, v3, v13

    const-string v4, "tbl_name = ?"

    new-array v5, v1, [Ljava/lang/String;

    const-string v0, "favorites"

    aput-object v0, v5, v13

    move-object v0, p1

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1078
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 1080
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v12, v1

    .line 1082
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_1
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tableExists tableName : favorites exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 1086
    goto :goto_0

    :cond_2
    move v12, v13

    .line 1080
    goto :goto_1

    .line 1082
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private updateHideItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "deleteItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p2, "hideDesktopItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local p3, "hideAppsItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 1464
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1465
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove hideItmes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id"

    .line 1467
    invoke-static {v3, p1}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1466
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1470
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1471
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "hidden"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1472
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1473
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update hideItmes for Apps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v1, "container"

    const/16 v2, -0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    const-string v1, "screen"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1476
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id"

    .line 1477
    invoke-static {v3, p3}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1476
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1479
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1480
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update hideItmes for Home"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    const-string v1, "container"

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1482
    const-string v1, "screen"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1483
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "favorites"

    const-string v3, "_id"

    .line 1484
    invoke-static {v3, p2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1483
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1486
    :cond_2
    return-void
.end method


# virtual methods
.method public applyHideItem(Ljava/util/Set;)V
    .locals 51
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1317
    .local p1, "hideItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v37, Ljava/util/HashMap;

    invoke-direct/range {v37 .. v37}, Ljava/util/HashMap;-><init>()V

    .line 1318
    .local v37, "hideItemsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 1319
    .local v46, "item":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1322
    .end local v46    # "item":Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1324
    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "container"

    aput-object v5, v6, v4

    const/4 v4, 0x2

    const-string v5, "intent"

    aput-object v5, v6, v4

    const/4 v4, 0x3

    const-string v5, "profileId"

    aput-object v5, v6, v4

    const/4 v4, 0x4

    const-string v5, "hidden"

    aput-object v5, v6, v4

    .line 1328
    .local v6, "columns":[Ljava/lang/String;
    const-string v7, "itemType=?"

    .line 1329
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1330
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    .line 1333
    .local v8, "selectionArg":[Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "favorites"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1334
    .local v22, "c":Landroid/database/Cursor;
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 1335
    .local v27, "deleteItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1336
    .local v36, "hideDesktopItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .local v35, "hideAppsItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v29, Landroid/util/LongSparseArray;

    invoke-direct/range {v29 .. v29}, Landroid/util/LongSparseArray;-><init>()V

    .line 1339
    .local v29, "folderItemList":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1340
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v45, 0x1

    .line 1342
    .local v45, "isHomeOnly":Z
    :goto_1
    if-eqz v22, :cond_9

    .line 1344
    :try_start_0
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1345
    .local v39, "idIndex":I
    const-string v4, "container"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1346
    .local v26, "containerIndex":I
    const-string v4, "intent"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v44

    .line 1347
    .local v44, "intentIndex":I
    const-string v4, "profileId"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 1348
    .local v50, "profileIndex":I
    const-string v4, "hidden"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 1350
    .local v34, "hiddenIndex":I
    :cond_1
    :goto_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1351
    move-object/from16 v0, v22

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v43

    .line 1352
    .local v43, "intentDescription":Ljava/lang/String;
    if-eqz v43, :cond_1

    .line 1358
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v43

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v42

    .line 1364
    .local v42, "intent":Landroid/content/Intent;
    :try_start_2
    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1365
    .local v40, "id":J
    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1366
    .local v24, "container":J
    move-object/from16 v0, v22

    move/from16 v1, v50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    .line 1367
    .local v48, "profile":J
    move-object/from16 v0, v22

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    .line 1369
    .local v33, "hidden":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v42 .. v42}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1370
    invoke-static/range {v48 .. v49}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1371
    .local v23, "componentAndProfile":Ljava/lang/String;
    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1372
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v37

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    if-nez v33, :cond_1

    .line 1374
    if-eqz v45, :cond_3

    .line 1375
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1394
    .end local v23    # "componentAndProfile":Ljava/lang/String;
    .end local v24    # "container":J
    .end local v26    # "containerIndex":I
    .end local v33    # "hidden":I
    .end local v34    # "hiddenIndex":I
    .end local v39    # "idIndex":I
    .end local v40    # "id":J
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v43    # "intentDescription":Ljava/lang/String;
    .end local v44    # "intentIndex":I
    .end local v48    # "profile":J
    .end local v50    # "profileIndex":I
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1458
    :catchall_1
    move-exception v4

    :goto_3
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4

    .line 1340
    .end local v45    # "isHomeOnly":Z
    :cond_2
    const/16 v45, 0x0

    goto/16 :goto_1

    .line 1359
    .restart local v26    # "containerIndex":I
    .restart local v34    # "hiddenIndex":I
    .restart local v39    # "idIndex":I
    .restart local v43    # "intentDescription":Ljava/lang/String;
    .restart local v44    # "intentIndex":I
    .restart local v45    # "isHomeOnly":Z
    .restart local v50    # "profileIndex":I
    :catch_0
    move-exception v28

    .line 1360
    .local v28, "e":Ljava/net/URISyntaxException;
    :try_start_4
    const-string v4, "FavoritesProvider"

    const-string v5, "Unable to parse intent"

    move-object/from16 v0, v28

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1377
    .end local v28    # "e":Ljava/net/URISyntaxException;
    .restart local v23    # "componentAndProfile":Ljava/lang/String;
    .restart local v24    # "container":J
    .restart local v33    # "hidden":I
    .restart local v40    # "id":J
    .restart local v42    # "intent":Landroid/content/Intent;
    .restart local v48    # "profile":J
    :cond_3
    const-wide/16 v4, -0x64

    cmp-long v4, v24, v4

    if-eqz v4, :cond_4

    const-wide/16 v4, -0x65

    cmp-long v4, v24, v4

    if-nez v4, :cond_5

    .line 1379
    :cond_4
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1380
    :cond_5
    const-wide/16 v4, -0x66

    cmp-long v4, v24, v4

    if-nez v4, :cond_6

    .line 1381
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1383
    :cond_6
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 1388
    :cond_7
    const/4 v4, 0x2

    move/from16 v0, v33

    if-ne v0, v4, :cond_1

    .line 1389
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 1394
    .end local v23    # "componentAndProfile":Ljava/lang/String;
    .end local v24    # "container":J
    .end local v33    # "hidden":I
    .end local v40    # "id":J
    .end local v42    # "intent":Landroid/content/Intent;
    .end local v43    # "intentDescription":Ljava/lang/String;
    .end local v48    # "profile":J
    :cond_8
    :try_start_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1398
    .end local v26    # "containerIndex":I
    .end local v34    # "hiddenIndex":I
    .end local v39    # "idIndex":I
    .end local v44    # "intentIndex":I
    .end local v50    # "profileIndex":I
    :cond_9
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 1399
    .local v31, "foldersInApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    .local v32, "foldersInHome":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v11, v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1403
    .end local v6    # "columns":[Ljava/lang/String;
    .local v11, "columns":[Ljava/lang/String;
    :try_start_6
    const-string v7, "itemType=? AND container=?"

    .line 1404
    const/4 v4, 0x2

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1405
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4

    const/4 v4, 0x1

    const/16 v5, -0x66

    .line 1406
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v13, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1408
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .local v13, "selectionArg":[Ljava/lang/String;
    :try_start_7
    sget-object v9, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "favorites"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v12, v7

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-result-object v22

    .line 1409
    if-eqz v22, :cond_b

    .line 1411
    :try_start_8
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1412
    .restart local v39    # "idIndex":I
    :goto_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1413
    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1414
    .restart local v40    # "id":J
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 1418
    .end local v39    # "idIndex":I
    .end local v40    # "id":J
    :catchall_2
    move-exception v4

    :try_start_9
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1458
    :catchall_3
    move-exception v4

    move-object v8, v13

    .end local v13    # "selectionArg":[Ljava/lang/String;
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    move-object v6, v11

    .end local v11    # "columns":[Ljava/lang/String;
    .restart local v6    # "columns":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1418
    .end local v6    # "columns":[Ljava/lang/String;
    .end local v8    # "selectionArg":[Ljava/lang/String;
    .restart local v11    # "columns":[Ljava/lang/String;
    .restart local v13    # "selectionArg":[Ljava/lang/String;
    .restart local v39    # "idIndex":I
    :cond_a
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1422
    .end local v39    # "idIndex":I
    :cond_b
    const-string v7, "itemType=? AND (container=? OR container=?)"

    .line 1424
    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 1425
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x1

    const/16 v5, -0x64

    .line 1426
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4

    const/4 v4, 0x2

    const/16 v5, -0x65

    .line 1427
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1429
    .end local v13    # "selectionArg":[Ljava/lang/String;
    .restart local v8    # "selectionArg":[Ljava/lang/String;
    :try_start_a
    sget-object v14, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "favorites"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v11

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move-result-object v22

    .line 1430
    if-eqz v22, :cond_d

    .line 1432
    :try_start_b
    const-string v4, "_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 1433
    .restart local v39    # "idIndex":I
    :goto_5
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1434
    move-object/from16 v0, v22

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 1435
    .restart local v40    # "id":J
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    .line 1438
    .end local v39    # "idIndex":I
    .end local v40    # "id":J
    :catchall_4
    move-exception v4

    :try_start_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1458
    :catchall_5
    move-exception v4

    move-object v6, v11

    .end local v11    # "columns":[Ljava/lang/String;
    .restart local v6    # "columns":[Ljava/lang/String;
    goto/16 :goto_3

    .line 1438
    .end local v6    # "columns":[Ljava/lang/String;
    .restart local v11    # "columns":[Ljava/lang/String;
    .restart local v39    # "idIndex":I
    :cond_c
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1442
    .end local v39    # "idIndex":I
    :cond_d
    invoke-virtual/range {v29 .. v29}, Landroid/util/LongSparseArray;->size()I

    move-result v30

    .line 1443
    .local v30, "folderListSize":I
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_6
    move/from16 v0, v38

    move/from16 v1, v30

    if-ge v0, v1, :cond_10

    .line 1444
    move-object/from16 v0, v29

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v47

    .line 1445
    .local v47, "key":Ljava/lang/Long;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 1446
    .local v24, "container":Ljava/lang/Long;
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1447
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1443
    :cond_e
    :goto_7
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 1448
    :cond_f
    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1449
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1453
    .end local v24    # "container":Ljava/lang/Long;
    .end local v47    # "key":Ljava/lang/Long;
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v36

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->updateHideItems(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1454
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v45

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->insertRemainHideItems(Ljava/util/HashMap;Z)V

    .line 1456
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1458
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1460
    return-void
.end method

.method checkChangedComponentExist(Z)V
    .locals 29
    .param p1, "isEmptyDb"    # Z

    .prologue
    .line 928
    const/16 v27, 0x0

    .line 930
    .local v27, "versionName":Ljava/lang/String;
    :try_start_0
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v8, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v20

    .line 931
    .local v20, "info":Landroid/content/pm/PackageInfo;
    if-eqz v20, :cond_0

    .line 932
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v27, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 938
    .end local v20    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string v23, "checkChangedComponentVersion"

    .line 939
    .local v23, "prefsKey":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 940
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_Easy"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 945
    :cond_1
    :goto_1
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 946
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 945
    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 947
    .local v22, "prefs":Landroid/content/SharedPreferences;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 949
    .local v24, "prevVersionName":Ljava/lang/String;
    const-string v5, "FavoritesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkChangedComponentExist PREF_KEY : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " prevVersionName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 952
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->loadChangedComponent()Ljava/util/HashMap;

    move-result-object v14

    .line 953
    .local v14, "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v5

    const/4 v5, 0x1

    const-string v8, "intent"

    aput-object v8, v6, v5

    .line 955
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    .line 956
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :cond_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 957
    .local v11, "before":Ljava/lang/String;
    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 959
    .local v10, "after":Ljava/lang/String;
    new-instance v13, Landroid/util/LongSparseArray;

    invoke-direct {v13}, Landroid/util/LongSparseArray;-><init>()V

    .line 960
    .local v13, "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 961
    .local v4, "cr":Landroid/content/ContentResolver;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent like \'%"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "%\'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 962
    .local v7, "where":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 964
    .local v12, "c":Landroid/database/Cursor;
    if-nez v12, :cond_5

    .line 965
    const-string v5, "FavoritesProvider"

    const-string v8, "checkChangedComponentExist cursor is null"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "projection":[Ljava/lang/String;
    .end local v7    # "where":Ljava/lang/String;
    .end local v10    # "after":Ljava/lang/String;
    .end local v11    # "before":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    .end local v14    # "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    :goto_2
    return-void

    .line 934
    .end local v22    # "prefs":Landroid/content/SharedPreferences;
    .end local v23    # "prefsKey":Ljava/lang/String;
    .end local v24    # "prevVersionName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 935
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "FavoritesProvider"

    const-string v8, "checkChangedComponentExist NameNotFoundException"

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 941
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v23    # "prefsKey":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 942
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "_HomeOnly"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_1

    .line 972
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "projection":[Ljava/lang/String;
    .restart local v7    # "where":Ljava/lang/String;
    .restart local v10    # "after":Ljava/lang/String;
    .restart local v11    # "before":Ljava/lang/String;
    .restart local v12    # "c":Landroid/database/Cursor;
    .restart local v13    # "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    .restart local v14    # "changedList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v22    # "prefs":Landroid/content/SharedPreferences;
    .restart local v24    # "prevVersionName":Ljava/lang/String;
    :cond_5
    :goto_3
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 973
    const/4 v5, 0x0

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 974
    .local v18, "id":J
    const/4 v5, 0x1

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v11, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    .line 975
    .local v21, "intent":Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v5, v18, v8

    if-lez v5, :cond_5

    .line 976
    move-wide/from16 v0, v18

    move-object/from16 v2, v21

    invoke-virtual {v13, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 980
    .end local v18    # "id":J
    .end local v21    # "intent":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v8

    if-nez v8, :cond_6

    .line 981
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5

    .line 980
    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    .line 981
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 986
    :cond_8
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 987
    .local v26, "values":Landroid/content/ContentValues;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    invoke-virtual {v13}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    move/from16 v0, v17

    if-ge v0, v5, :cond_2

    .line 988
    invoke-virtual/range {v26 .. v26}, Landroid/content/ContentValues;->clear()V

    .line 989
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v18

    .line 990
    .restart local v18    # "id":J
    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 991
    .restart local v21    # "intent":Ljava/lang/String;
    invoke-static/range {v18 .. v19}, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v25

    .line 992
    .local v25, "uri":Landroid/net/Uri;
    const-string v5, "intent"

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    if-eqz p1, :cond_9

    .line 994
    const-string v5, "itemType"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    :cond_9
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1, v5, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 998
    const-string v5, "FavoritesProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Changed component updated : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1003
    .end local v4    # "cr":Landroid/content/ContentResolver;
    .end local v7    # "where":Ljava/lang/String;
    .end local v10    # "after":Ljava/lang/String;
    .end local v11    # "before":Ljava/lang/String;
    .end local v12    # "c":Landroid/database/Cursor;
    .end local v13    # "changedItems":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/String;>;"
    .end local v17    # "i":I
    .end local v18    # "id":J
    .end local v21    # "intent":Ljava/lang/String;
    .end local v25    # "uri":Landroid/net/Uri;
    .end local v26    # "values":Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher3/common/model/FavoritesProvider;->changePackageForManagedProfile(Ljava/util/HashMap;)V

    .line 1005
    :cond_b
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v16

    .line 1006
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v27

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1007
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_2
.end method

.method public checkId(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 6
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 2487
    const-string v1, "_id"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2488
    .local v0, "id":Ljava/lang/Long;
    if-nez v0, :cond_1

    .line 2500
    :cond_0
    :goto_0
    return-void

    .line 2491
    :cond_1
    const-string v1, "workspaceScreens"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2492
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2493
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    goto :goto_0

    .line 2496
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 2497
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    goto :goto_0
.end method

.method public checkTable()Z
    .locals 9

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->getColumnList()Ljava/util/ArrayList;

    move-result-object v0

    .line 842
    .local v0, "colList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 843
    .local v4, "ret":Z
    const/4 v5, 0x0

    .line 846
    .local v5, "ti":Landroid/database/Cursor;
    :try_start_0
    sget-object v6, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "PRAGMA table_info(favorites)"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 847
    if-eqz v5, :cond_3

    .line 848
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 849
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 850
    .local v2, "expectSize":I
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 851
    .local v3, "realSize":I
    const-string v6, "FavoritesProvider"

    const-string v7, "checkTable : Column list size isn\'t matching with reference."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    const-string v6, "FavoritesProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTable : expect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", real: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    const/4 v4, 0x0

    .line 873
    .end local v2    # "expectSize":I
    .end local v3    # "realSize":I
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 874
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_1
    :goto_1
    return v4

    .line 855
    :cond_2
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 856
    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 857
    const-string v6, "FavoritesProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTable : The field name ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] does not exist."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v4, 0x0

    .line 860
    goto :goto_0

    .line 865
    :cond_3
    const/4 v4, 0x0

    .line 866
    const-string v6, "FavoritesProvider"

    const-string v7, "checkTable : query cursor is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 869
    :catch_0
    move-exception v1

    .line 870
    .local v1, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 871
    :try_start_2
    const-string v6, "FavoritesProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkTable : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 873
    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 874
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 873
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_4

    .line 874
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v6
.end method

.method public clearFlagEmptyDbSwitched()V
    .locals 3

    .prologue
    .line 2663
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 2664
    .local v0, "spKey":Ljava/lang/String;
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2665
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EMPTY_DATABASE_SWITCHED"

    .line 2666
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2667
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2668
    return-void
.end method

.method public convertShortcutsToLauncherActivities()V
    .locals 22

    .prologue
    .line 1517
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1518
    const/4 v10, 0x0

    .line 1519
    .local v10, "c":Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 1523
    .local v19, "updateStmt":Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v2

    .line 1524
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    .line 1525
    .local v20, "userSerial":J
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "intent"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "itemType=1 AND profileId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v20

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1531
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "UPDATE favorites SET itemType=0 WHERE _id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 1534
    const-string v2, "_id"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 1535
    .local v13, "idIndex":I
    const-string v2, "intent"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 1537
    .local v18, "intentIndex":I
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1538
    move/from16 v0, v18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 1541
    .local v17, "intentDescription":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v16

    .line 1547
    .local v16, "intent":Landroid/content/Intent;
    :try_start_2
    invoke-static/range {v16 .. v16}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1551
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1552
    .local v14, "id":J
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1553
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1556
    .end local v13    # "idIndex":I
    .end local v14    # "id":J
    .end local v16    # "intent":Landroid/content/Intent;
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v18    # "intentIndex":I
    .end local v20    # "userSerial":J
    :catch_0
    move-exception v12

    .line 1557
    .local v12, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "FavoritesProvider"

    const-string v3, "Error deduping shortcuts"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1559
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1560
    if-eqz v10, :cond_1

    .line 1561
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_1
    if-eqz v19, :cond_2

    .line 1564
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1567
    .end local v12    # "ex":Landroid/database/SQLException;
    :cond_2
    :goto_1
    return-void

    .line 1542
    .restart local v13    # "idIndex":I
    .restart local v17    # "intentDescription":Ljava/lang/String;
    .restart local v18    # "intentIndex":I
    .restart local v20    # "userSerial":J
    :catch_1
    move-exception v11

    .line 1543
    .local v11, "e":Ljava/net/URISyntaxException;
    :try_start_4
    const-string v2, "FavoritesProvider"

    const-string v3, "Unable to parse intent"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1559
    .end local v11    # "e":Ljava/net/URISyntaxException;
    .end local v13    # "idIndex":I
    .end local v17    # "intentDescription":Ljava/lang/String;
    .end local v18    # "intentIndex":I
    .end local v20    # "userSerial":J
    :catchall_0
    move-exception v2

    sget-object v3, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1560
    if-eqz v10, :cond_3

    .line 1561
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_3
    if-eqz v19, :cond_4

    .line 1564
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_4
    throw v2

    .line 1555
    .restart local v13    # "idIndex":I
    .restart local v18    # "intentIndex":I
    .restart local v20    # "userSerial":J
    :cond_5
    :try_start_5
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1559
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1560
    if-eqz v10, :cond_6

    .line 1561
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1563
    :cond_6
    if-eqz v19, :cond_2

    .line 1564
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1
.end method

.method public copyFavoritesForHomeOnly()V
    .locals 14

    .prologue
    .line 1578
    const-string v0, "FavoritesProvider"

    const-string v1, "copyFavorites : homeApps layout -> homeOnly layout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1581
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1584
    .local v12, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    const-string v3, "itemType=? AND (container=? OR container=?)"

    .line 1586
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const/16 v1, -0x64

    .line 1587
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const/16 v1, -0x65

    .line 1588
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 1590
    .local v4, "selectionArg":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 1592
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 1594
    :goto_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1595
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1598
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1630
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1631
    .local v11, "ex":Landroid/database/SQLException;
    :try_start_3
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in copy favorites for homeonly : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1633
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1635
    .end local v11    # "ex":Landroid/database/SQLException;
    :goto_1
    return-void

    .line 1598
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArg":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_0
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1602
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens_homeOnly"

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1603
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO workspaceScreens_homeOnly SELECT * FROM workspaceScreens"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1605
    const-string v9, "INSERT INTO favorites_homeOnly SELECT * FROM favorites WHERE container=-100 OR container=-101"

    .line 1610
    .local v9, "copySQL":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR container in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v12}, Lcom/android/launcher3/common/model/FavoritesProvider;->makeFoldersIdToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1613
    :cond_2
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1616
    const-string v8, "com.sec.launcher.action.SHOW_APPS_VIEW"

    .line 1617
    .local v8, "appsAction":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "intent like \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1618
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites_homeOnly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1620
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->bindAppWidgetForHomeOnly()V

    .line 1622
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeAppShortcutForHomeOnly()V

    .line 1624
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeDuplicateItemForHomeOnly()Ljava/util/ArrayList;

    move-result-object v13

    .line 1626
    .local v13, "homeItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    invoke-direct {p0, v13}, Lcom/android/launcher3/common/model/FavoritesProvider;->copyAppsItemsToHome(Ljava/util/ArrayList;)V

    .line 1628
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1629
    invoke-direct {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->copyPreferenceForHomeOnly()V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1633
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArg":[Ljava/lang/String;
    .end local v8    # "appsAction":Ljava/lang/String;
    .end local v9    # "copySQL":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "homeItemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public createTable(J)V
    .locals 1
    .param p1, "userSerial"    # J

    .prologue
    .line 717
    const-string v0, "favorites"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 718
    const-string v0, "workspaceScreens"

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 720
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    const-string v0, "favorites_homeOnly"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 722
    const-string v0, "workspaceScreens_homeOnly"

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 725
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    const-string v0, "favorites_easy"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 727
    const-string v0, "workspaceScreens_easy"

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 729
    :cond_1
    return-void
.end method

.method public deleteEmptyFolders()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2326
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2328
    .local v10, "folderIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2331
    :try_start_0
    const-string v3, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    .line 2336
    .local v3, "selection":Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2340
    .local v8, "c":Landroid/database/Cursor;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v11

    .line 2341
    .local v11, "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2343
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->deleteFolder(J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2351
    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    :catch_0
    move-exception v9

    .line 2352
    .local v9, "ex":Landroid/database/SQLException;
    :try_start_1
    const-string v0, "FavoritesProvider"

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2353
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2355
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2357
    .end local v9    # "ex":Landroid/database/SQLException;
    :goto_1
    return-object v10

    .line 2345
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v8    # "c":Landroid/database/Cursor;
    .restart local v11    # "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_0
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2346
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2347
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    const-string v2, "_id"

    invoke-static {v2, v10}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2350
    :cond_1
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2355
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v3    # "selection":Ljava/lang/String;
    .end local v8    # "c":Landroid/database/Cursor;
    .end local v11    # "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public deleteInvalidFolders(Ljava/util/ArrayList;)V
    .locals 39
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2371
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 2374
    .local v27, "folders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;>;"
    const-string v5, "itemType = 2 AND container = -102"

    .line 2377
    .local v5, "selection":Ljava/lang/String;
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "rank"

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "screen"

    aput-object v3, v4, v2

    const/4 v2, 0x3

    const-string v3, "cellX"

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "cellY"

    aput-object v3, v4, v2

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v4, v2

    .line 2379
    .local v4, "column":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2380
    .local v23, "cursor":Landroid/database/Cursor;
    if-eqz v23, :cond_0

    .line 2382
    :try_start_0
    const-string v2, "_id"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 2383
    .local v29, "idIndex":I
    const-string v2, "rank"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v33

    .line 2384
    .local v33, "rankIndex":I
    const-string v2, "screen"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v35

    .line 2385
    .local v35, "screenIndex":I
    const-string v2, "cellX"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 2386
    .local v18, "cellXIndex":I
    const-string v2, "cellY"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 2387
    .local v20, "cellYIndex":I
    const-string v2, "title"

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 2389
    .local v16, "TitleIndex":I
    :goto_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2390
    new-instance v30, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;-><init>(Lcom/android/launcher3/common/model/FavoritesProvider;)V

    .line 2391
    .local v30, "info":Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;
    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->id:Ljava/lang/Long;

    .line 2392
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v30

    iput v2, v0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->rank:I

    .line 2393
    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v30

    iput v2, v0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->screen:I

    .line 2394
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v30

    iput v2, v0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->cellX:I

    .line 2395
    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v30

    iput v2, v0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->cellY:I

    .line 2396
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    iput-object v2, v0, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->title:Ljava/lang/String;

    .line 2397
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2399
    .end local v16    # "TitleIndex":I
    .end local v18    # "cellXIndex":I
    .end local v20    # "cellYIndex":I
    .end local v29    # "idIndex":I
    .end local v30    # "info":Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;
    .end local v33    # "rankIndex":I
    .end local v35    # "screenIndex":I
    :catch_0
    move-exception v24

    .line 2400
    .local v24, "e":Landroid/database/SQLException;
    :try_start_1
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error in deleteInvalidFolders e="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2403
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 2407
    .end local v24    # "e":Landroid/database/SQLException;
    :cond_0
    :goto_1
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2408
    .local v25, "folderCount":I
    if-lez v25, :cond_9

    .line 2409
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v31

    .line 2411
    .local v31, "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    move/from16 v0, v28

    move/from16 v1, v25

    if-ge v0, v1, :cond_9

    .line 2413
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 2411
    :cond_1
    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 2403
    .end local v25    # "folderCount":I
    .end local v28    # "i":I
    .end local v31    # "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    .restart local v16    # "TitleIndex":I
    .restart local v18    # "cellXIndex":I
    .restart local v20    # "cellYIndex":I
    .restart local v29    # "idIndex":I
    .restart local v33    # "rankIndex":I
    .restart local v35    # "screenIndex":I
    :cond_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v16    # "TitleIndex":I
    .end local v18    # "cellXIndex":I
    .end local v20    # "cellYIndex":I
    .end local v29    # "idIndex":I
    .end local v33    # "rankIndex":I
    .end local v35    # "screenIndex":I
    :catchall_0
    move-exception v2

    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2416
    .restart local v25    # "folderCount":I
    .restart local v28    # "i":I
    .restart local v31    # "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_3
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    iget-object v0, v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->id:Ljava/lang/Long;

    move-object/from16 v26, v0

    .line 2417
    .local v26, "folderDbId":Ljava/lang/Long;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "itemType = 0 AND container = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2420
    .local v9, "selectionChild":Ljava/lang/String;
    sget-object v6, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "favorites"

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v8, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 2424
    if-eqz v23, :cond_7

    :try_start_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2425
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    .line 2426
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteInvalidFolders folderId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " has only 1 item, so we delete this folder"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2427
    new-instance v38, Landroid/content/ContentValues;

    invoke-direct/range {v38 .. v38}, Landroid/content/ContentValues;-><init>()V

    .line 2429
    .local v38, "values":Landroid/content/ContentValues;
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 2430
    .local v22, "childDbId":Ljava/lang/Long;
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    iget v0, v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->rank:I

    move/from16 v32, v0

    .line 2431
    .local v32, "rank":I
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    iget v0, v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->screen:I

    move/from16 v34, v0

    .line 2432
    .local v34, "screen":I
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    iget v0, v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->cellX:I

    move/from16 v17, v0

    .line 2433
    .local v17, "cellX":I
    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    iget v0, v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->cellY:I

    move/from16 v19, v0

    .line 2435
    .local v19, "cellY":I
    const-string v2, "container"

    const/16 v3, -0x66

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2436
    const-string v2, "screen"

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2437
    const-string v2, "cellX"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2438
    const-string v2, "cellY"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2439
    const-string v2, "spanX"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2440
    const-string v2, "spanY"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2441
    const-string v2, "rank"

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v38

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 2445
    .local v37, "selectionUpdate":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v2, v3, v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2448
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 2449
    .local v36, "selectionDelete":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "favorites"

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v2, v3, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2452
    const-wide/16 v11, -0x66

    invoke-virtual/range {v27 .. v28}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;

    iget-object v13, v2, Lcom/android/launcher3/common/model/FavoritesProvider$FolderDbInfo;->title:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    move-object/from16 v10, v31

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/common/customer/PostPositionController;->writeFolderReadyIdForNoFDR(JLjava/lang/String;J)V

    .line 2455
    sget-object v3, Lcom/android/launcher3/common/model/DataLoader;->sBgLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2456
    :try_start_3
    const-string v2, "FavoritesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteInvalidFolders folderId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " childDbId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " changed rank="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgFolders:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 2458
    sget-object v2, Lcom/android/launcher3/common/model/DataLoader;->sBgItemsIdMap:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    .line 2459
    const/16 v21, 0x0

    .line 2460
    .local v21, "child":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 2461
    .local v30, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    move-object/from16 v0, v30

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v6, v6, v10

    if-nez v6, :cond_4

    .line 2462
    move-object/from16 v21, v30

    .line 2466
    .end local v30    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_5
    if-eqz v21, :cond_6

    .line 2467
    const-string v2, "FavoritesProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This item is not folder\'s child anymore, so we change app info : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const-wide/16 v6, -0x66

    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    .line 2469
    move/from16 v0, v32

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    .line 2470
    move/from16 v0, v34

    int-to-long v6, v0

    move-object/from16 v0, v21

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    .line 2472
    :cond_6
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2477
    .end local v17    # "cellX":I
    .end local v19    # "cellY":I
    .end local v21    # "child":Lcom/android/launcher3/common/base/item/IconInfo;
    .end local v22    # "childDbId":Ljava/lang/Long;
    .end local v32    # "rank":I
    .end local v34    # "screen":I
    .end local v36    # "selectionDelete":Ljava/lang/String;
    .end local v37    # "selectionUpdate":Ljava/lang/String;
    .end local v38    # "values":Landroid/content/ContentValues;
    :cond_7
    if-eqz v23, :cond_1

    .line 2478
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 2472
    .restart local v17    # "cellX":I
    .restart local v19    # "cellY":I
    .restart local v22    # "childDbId":Ljava/lang/Long;
    .restart local v32    # "rank":I
    .restart local v34    # "screen":I
    .restart local v36    # "selectionDelete":Ljava/lang/String;
    .restart local v37    # "selectionUpdate":Ljava/lang/String;
    .restart local v38    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2474
    .end local v17    # "cellX":I
    .end local v19    # "cellY":I
    .end local v22    # "childDbId":Ljava/lang/Long;
    .end local v32    # "rank":I
    .end local v34    # "screen":I
    .end local v36    # "selectionDelete":Ljava/lang/String;
    .end local v37    # "selectionUpdate":Ljava/lang/String;
    .end local v38    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v24

    .line 2475
    .restart local v24    # "e":Landroid/database/SQLException;
    :try_start_6
    const-string v2, "FavoritesProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "child error in deleteInvalidFolders e="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2477
    if-eqz v23, :cond_1

    .line 2478
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 2477
    .end local v24    # "e":Landroid/database/SQLException;
    :catchall_2
    move-exception v2

    if-eqz v23, :cond_8

    .line 2478
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 2483
    .end local v9    # "selectionChild":Ljava/lang/String;
    .end local v26    # "folderDbId":Ljava/lang/Long;
    .end local v28    # "i":I
    .end local v31    # "postPosition":Lcom/android/launcher3/common/customer/PostPositionController;
    :cond_9
    return-void
.end method

.method public deleteTable()V
    .locals 4

    .prologue
    .line 776
    :try_start_0
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 777
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 778
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_homeOnly"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 779
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_homeApps"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 780
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_easy"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 781
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS favorites_standard"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 782
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 783
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_homeOnly"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 784
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_homeApps"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 785
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_easy"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS workspaceScreens_standard"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 789
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 790
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 794
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 796
    :goto_0
    return-void

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "FavoritesProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteTable converting error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 794
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public deleteTable(Ljava/lang/String;)V
    .locals 4
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 799
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteTable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 803
    :cond_0
    return-void
.end method

.method public deleteWidgetHost(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/launcher3/LauncherProviderChangeListener;

    .prologue
    .line 1092
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHost;->deleteHost()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/MainThreadExecutor;

    invoke-direct {v1}, Lcom/android/launcher3/util/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/android/launcher3/common/model/FavoritesProvider$1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/common/model/FavoritesProvider$1;-><init>(Lcom/android/launcher3/common/model/FavoritesProvider;Lcom/android/launcher3/LauncherProviderChangeListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1108
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1095
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1096
    throw v0
.end method

.method public deleteWidgetIds(Ljava/lang/String;)V
    .locals 13
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1111
    const-string v11, "itemType=?"

    .line 1112
    .local v11, "whereClause":Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1114
    .local v4, "selectionArg":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 1116
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "appWidgetId"

    aput-object v3, v2, v1

    const-string v3, "itemType=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1118
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1119
    const-string v0, "appWidgetId"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1124
    .local v10, "idxAppWidgetID":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1126
    .local v12, "widgetId":I
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete WidgetId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0, v12}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1130
    .end local v10    # "idxAppWidgetID":I
    .end local v12    # "widgetId":I
    :catch_0
    move-exception v9

    .line 1131
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "FavoritesProvider"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1133
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1137
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 1133
    :cond_1
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1133
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1134
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public generateNewScreenId()J
    .locals 4

    .prologue
    .line 1145
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1146
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: max screen id was not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1148
    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 1149
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    return-wide v0
.end method

.method public getAppWidgetHost()Landroid/appwidget/AppWidgetHost;
    .locals 1

    .prologue
    .line 2930
    iget-object v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    return-object v0
.end method

.method public getItemCount(Ljava/lang/String;)I
    .locals 11
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 1239
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "COUNT(*)"

    aput-object v0, v2, v10

    .line 1240
    .local v2, "columns":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1242
    .local v8, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 1243
    .local v9, "count":I
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1247
    :cond_0
    if-eqz v8, :cond_1

    .line 1248
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1250
    :cond_1
    return v9
.end method

.method public getMaxScreenId()J
    .locals 2

    .prologue
    .line 708
    iget-wide v0, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    return-wide v0
.end method

.method public initializeExternalAdd(Landroid/content/ContentValues;)Z
    .locals 12
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v8, 0x0

    .line 1154
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1155
    const-string v9, "FavoritesProvider"

    const-string v10, " [SPRINT] - skip generating new ID for new rows as it\'s already created"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_0
    const-string v9, "itemType"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 1164
    .local v6, "itemType":Ljava/lang/Integer;
    if-eqz v6, :cond_2

    .line 1165
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    const-string v9, "appWidgetId"

    .line 1166
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1168
    sget-object v9, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 1169
    .local v1, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    const-string v9, "appWidgetProvider"

    .line 1170
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1169
    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1172
    .local v2, "cn":Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    .line 1174
    :try_start_0
    iget-object v9, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v9}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    .line 1175
    .local v0, "appWidgetId":I
    const-string v9, "appWidgetId"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1176
    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .line 1196
    .end local v0    # "appWidgetId":I
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return v8

    .line 1157
    .end local v6    # "itemType":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v4

    .line 1158
    .local v4, "id":J
    const-string v9, "_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 1179
    .end local v4    # "id":J
    .restart local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    .restart local v6    # "itemType":Ljava/lang/Integer;
    :catch_0
    move-exception v3

    .line 1180
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v9, "FavoritesProvider"

    const-string v10, "Failed to initialize external widget"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1188
    .end local v1    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_2
    const-string v9, "container"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string v9, "container"

    .line 1189
    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, -0x64

    if-ne v9, v10, :cond_3

    .line 1191
    const-string v9, "screen"

    invoke-virtual {p1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 1192
    .local v7, "screenId":Ljava/lang/Long;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {p0, v10, v11}, Lcom/android/launcher3/common/model/FavoritesProvider;->addScreenIdIfNecessary(J)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1196
    .end local v7    # "screenId":Ljava/lang/Long;
    :cond_3
    const/4 v8, 0x1

    goto :goto_1
.end method

.method public insertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v1, 0x0

    .line 2504
    if-eqz p2, :cond_0

    .line 2505
    invoke-static {p1, p2, v1, p3}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 2507
    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "favorites"

    invoke-static {p1, v0, v1, p3}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public loadAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 4
    .param p1, "parser"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2208
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2210
    .local v1, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2213
    .local v0, "count":I
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2216
    const-string v2, "favorites"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2218
    return v0
.end method

.method public loadFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 14
    .param p1, "parser"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2161
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2163
    .local v7, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v9, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1, v9, v7}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2164
    .local v0, "count":I
    invoke-virtual {p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->isReloadPostPosition()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2204
    :goto_0
    return v0

    .line 2169
    :cond_0
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 2170
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2171
    .local v2, "defaultScreenCount":I
    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    .line 2173
    .local v1, "cscScreenCount":I
    :goto_1
    const-string v9, "FavoritesProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "defaultScreenCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cscScreenCount : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    if-ge v2, v1, :cond_3

    .line 2175
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_3

    .line 2176
    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2177
    int-to-long v10, v3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v3, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2175
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2171
    .end local v1    # "cscScreenCount":I
    .end local v3    # "i":I
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Launcher_TotalPageCount"

    .line 2172
    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 2181
    .restart local v1    # "cscScreenCount":I
    :cond_3
    const/4 v6, 0x0

    .line 2182
    .local v6, "rank":I
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2183
    .local v8, "values":Landroid/content/ContentValues;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 2184
    .local v4, "id":Ljava/lang/Long;
    invoke-virtual {v8}, Landroid/content/ContentValues;->clear()V

    .line 2185
    const-string v10, "_id"

    invoke-virtual {v8, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2186
    const-string v10, "screenRank"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2187
    sget-object v10, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v11, "workspaceScreens"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12, v8}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 2188
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Failed initialize screen tablefrom default layout"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2191
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 2192
    goto :goto_3

    .line 2196
    .end local v4    # "id":Ljava/lang/Long;
    :cond_5
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProviderID()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v5

    .line 2197
    .local v5, "providerID":Lcom/android/launcher3/LauncherProviderID;
    if-eqz v5, :cond_6

    .line 2198
    const-string v9, "FavoritesProvider"

    const-string v10, "[SPRINT] Will init pref table based on default values"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    sget-object v9, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/LauncherProviderID;->initPreferences(Landroid/content/Context;)V

    .line 2202
    :cond_6
    const-string v9, "favorites"

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2203
    const-string v9, "workspaceScreens"

    invoke-virtual {p0, v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    goto/16 :goto_0
.end method

.method public loadHotseatCount()I
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2635
    const/4 v9, -0x1

    .line 2638
    .local v9, "count":I
    const-string v3, "container=?"

    .line 2639
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, -0x65

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 2640
    .local v4, "selectionArgs":[Ljava/lang/String;
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "favorites"

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2642
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2643
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 2644
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2646
    :cond_0
    return v9
.end method

.method public loadScreensFromDb()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 2514
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2515
    .local v11, "screenIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_0
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "workspaceScreens"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "screenRank"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .local v10, "sc":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2517
    :try_start_1
    const-string v1, "_id"

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 2518
    .local v9, "idIndex":I
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2519
    invoke-interface {v10, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 2515
    .end local v9    # "idIndex":I
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2521
    :catchall_0
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    :goto_1
    if-eqz v10, :cond_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_2
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .end local v10    # "sc":Landroid/database/Cursor;
    :catch_1
    move-exception v8

    .line 2522
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Desktop items loading interrupted - invalid screens: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2525
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    return-object v11

    .line 2521
    .restart local v9    # "idIndex":I
    .restart local v10    # "sc":Landroid/database/Cursor;
    :cond_2
    if-eqz v10, :cond_1

    if-eqz v12, :cond_3

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .end local v9    # "idIndex":I
    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v12

    goto :goto_1
.end method

.method public loadWorkspaceWithScreenRank(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5
    .param p1, "favoriteTable"    # Ljava/lang/String;
    .param p2, "screenTable"    # Ljava/lang/String;

    .prologue
    .line 2651
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2652
    .local v0, "escapedFavoriteTable":Ljava/lang/String;
    invoke-static {p2}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2654
    .local v1, "escapedScreenTable":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT f.*, screenRank from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " f join "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " w on f.screen = w._id where container = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, -0x64

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 2657
    invoke-static {v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " order by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "screenRank"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cellY"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cellX"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 2654
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public migrateTable(JII)Z
    .locals 19
    .param p1, "userSerial"    # J
    .param p3, "oldVersion"    # I
    .param p4, "newVersion"    # I

    .prologue
    .line 521
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    .line 522
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "DB file is null state for migration."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 525
    :cond_0
    const/16 v4, 0x1e

    move/from16 v0, p3

    if-lt v0, v4, :cond_1

    .line 526
    const/16 v18, 0x0

    .line 584
    :goto_0
    return v18

    .line 529
    :cond_1
    const/16 v18, 0x0

    .line 531
    .local v18, "ret":Z
    :try_start_0
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 533
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 534
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 533
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 535
    .local v16, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    .line 537
    .local v17, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    new-instance v12, Ljava/io/File;

    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const-string v5, "pagesettings.db"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pagesettings.db"

    invoke-direct {v12, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    .line 540
    .local v13, "isDaliMigration":Z
    const-string v15, "home_briefing_enable"

    .line 541
    .local v15, "oldZeroPagePrefKey":Ljava/lang/String;
    const-string v4, "home_briefing_enable"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v14

    .line 543
    .local v14, "isExistZeroPagePref":Z
    if-eqz v14, :cond_2

    .line 544
    const-string v4, "home_briefing_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateZeroPagePrefs(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    .line 547
    :cond_2
    if-eqz v13, :cond_3

    .line 548
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->prevMigrationForDali()V

    .line 549
    const/4 v5, 0x1

    const-string v6, "favorites"

    const-string v7, "workspaceScreens"

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 550
    const-string v4, "favorites_homeOnly"

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 551
    const-string v4, "workspaceScreens_homeOnly"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 563
    :goto_1
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTableForEasyMode(J)V

    .line 565
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateSharedPrefsForApps(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    .line 566
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "DROP TABLE IF EXISTS appOrder"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 569
    const-string v4, "MoveApps_Help_Shown"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 570
    const-string v4, "screencount"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 571
    const-string v4, "homescreenindex"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 572
    const-string v4, "need_dark_font"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    const-string v4, "emptypages"

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 574
    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 576
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    const/16 v18, 0x1

    .line 581
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 553
    :cond_3
    :try_start_1
    const-string v4, "home_only_mode"

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "home_only_mode"

    const/4 v5, 0x0

    .line 554
    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 555
    const/4 v5, 0x0

    const-string v6, "favorites"

    const-string v7, "workspaceScreens"

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 556
    const/4 v5, 0x0

    const-string v6, "favorites_homeApps"

    const-string v7, "workspaceScreens_homeApps"

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 578
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "isDaliMigration":Z
    .end local v14    # "isExistZeroPagePref":Z
    .end local v15    # "oldZeroPagePrefKey":Ljava/lang/String;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v11

    .line 579
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "FavoritesProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "migrateTable converting error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 581
    sget-object v4, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 558
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "file":Ljava/io/File;
    .restart local v13    # "isDaliMigration":Z
    .restart local v14    # "isExistZeroPagePref":Z
    .restart local v15    # "oldZeroPagePrefKey":Ljava/lang/String;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    .restart local v17    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    const-string v6, "favorites"

    const-string v7, "workspaceScreens"

    const/4 v10, 0x1

    move-object/from16 v4, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V

    .line 559
    const/4 v5, 0x0

    const-string v6, "favorites_homeOnly"

    const-string v7, "workspaceScreens_homeOnly"

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrationTable(ZLjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 581
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "isDaliMigration":Z
    .end local v14    # "isExistZeroPagePref":Z
    .end local v15    # "oldZeroPagePrefKey":Ljava/lang/String;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v4

    sget-object v5, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public removeAndAddHiddenApp(Lcom/android/launcher3/common/model/DefaultLayoutParser;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 26
    .param p1, "loader"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;
    .param p2, "restoredCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2250
    .local p3, "tables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->getHiddenApps()Ljava/util/ArrayList;

    move-result-object v8

    .line 2251
    .local v8, "hiddenApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const-string v20, "FavoritesProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "removeAndAddHiddenApp size "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 2317
    :goto_0
    return-void

    .line 2256
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2257
    .local v15, "restoredTables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_6

    .line 2258
    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2276
    :cond_1
    sget-object v20, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2277
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 2278
    .local v6, "cn":Landroid/content/ComponentName;
    const-wide/16 v22, 0x0

    move-wide/from16 v0, v22

    invoke-static {v6, v0, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeLaunchIntent(Landroid/content/ComponentName;J)Landroid/content/Intent;

    move-result-object v9

    .line 2279
    .local v9, "intentWithProfile":Landroid/content/Intent;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    .line 2280
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2281
    .local v12, "intentWithoutProfile":Landroid/content/Intent;
    const-string v21, "profile"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 2283
    const-string v16, "itemType=? AND (intent=? OR intent=?)"

    .line 2285
    .local v16, "selection":Ljava/lang/String;
    const/16 v21, 0x3

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    const/16 v21, 0x1

    const/16 v22, 0x0

    .line 2286
    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    const/16 v21, 0x2

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    .line 2288
    .local v17, "selectionArg":[Ljava/lang/String;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 2289
    .local v19, "values":Landroid/content/ContentValues;
    const-string v21, "intent"

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    const-string v21, "title"

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const-string v21, "screen"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2292
    const-string v21, "itemType"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2293
    const-string v21, "profileId"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2294
    const-string v21, "hidden"

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2296
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2297
    .local v18, "tableName":Ljava/lang/String;
    sget-object v22, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 2298
    .local v7, "deleteCount":I
    const-string v22, "FavoritesProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "remove hidden app("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") in "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ". delete count : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    const-string v22, "favorites"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v10

    .line 2302
    .local v10, "id":J
    :goto_2
    const-string v22, "_id"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2303
    const-string v22, "container"

    const/16 v23, -0x66

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2304
    const-string v22, "favorites_homeOnly"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "favorites_standard"

    .line 2305
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2306
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled(Z)Z

    move-result v22

    if-nez v22, :cond_4

    :cond_3
    const-string v22, "favorites"

    .line 2307
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 2308
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v22

    if-eqz v22, :cond_5

    .line 2309
    :cond_4
    const-string v22, "container"

    const/16 v23, -0x64

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2311
    :cond_5
    sget-object v22, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2312
    const-string v22, "FavoritesProvider"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "insert hidden app("

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ") to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2260
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "deleteCount":I
    .end local v9    # "intentWithProfile":Landroid/content/Intent;
    .end local v10    # "id":J
    .end local v12    # "intentWithoutProfile":Landroid/content/Intent;
    .end local v16    # "selection":Ljava/lang/String;
    .end local v17    # "selectionArg":[Ljava/lang/String;
    .end local v18    # "tableName":Ljava/lang/String;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_6
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v4, v0, [Ljava/lang/String;

    const/16 v20, 0x0

    const-string v21, "home"

    aput-object v21, v4, v20

    const/16 v20, 0x1

    const-string v21, "homeOnly"

    aput-object v21, v4, v20

    const/16 v20, 0x2

    const-string v21, "easy"

    aput-object v21, v4, v20

    .line 2262
    .local v4, "categories":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2264
    .local v14, "restoredCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_7

    .line 2265
    const-string v20, ","

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 2266
    .local v13, "items":[Ljava/lang/String;
    invoke-static {v14, v13}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2269
    .end local v13    # "items":[Ljava/lang/String;
    :cond_7
    array-length v0, v4

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_3
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    aget-object v5, v4, v20

    .line 2270
    .local v5, "categoryName":Ljava/lang/String;
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 2271
    invoke-static {v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2269
    :cond_8
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 2301
    .end local v4    # "categories":[Ljava/lang/String;
    .end local v5    # "categoryName":Ljava/lang/String;
    .end local v14    # "restoredCategories":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "deleteCount":I
    .restart local v9    # "intentWithProfile":Landroid/content/Intent;
    .restart local v12    # "intentWithoutProfile":Landroid/content/Intent;
    .restart local v16    # "selection":Ljava/lang/String;
    .restart local v17    # "selectionArg":[Ljava/lang/String;
    .restart local v18    # "tableName":Ljava/lang/String;
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;)J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v10, v22, v24

    goto/16 :goto_2

    .line 2315
    .end local v6    # "cn":Landroid/content/ComponentName;
    .end local v7    # "deleteCount":I
    .end local v9    # "intentWithProfile":Landroid/content/Intent;
    .end local v12    # "intentWithoutProfile":Landroid/content/Intent;
    .end local v16    # "selection":Ljava/lang/String;
    .end local v17    # "selectionArg":[Ljava/lang/String;
    .end local v18    # "tableName":Ljava/lang/String;
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_a
    sget-object v20, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2316
    sget-object v20, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0
.end method

.method public removeChangedComponentPref()V
    .locals 5

    .prologue
    .line 882
    const-string v1, "checkChangedComponentVersion_HomeOnly"

    .line 885
    .local v1, "prefsKeyHomeOnly":Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 886
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 885
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 886
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 887
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "checkChangedComponentVersion"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 888
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 889
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 890
    return-void
.end method

.method public restoreAppsFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 4
    .param p1, "loader"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2243
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2245
    .local v0, "count":I
    const-string v1, "favorites"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2246
    return v0
.end method

.method public restoreFavorites(Lcom/android/launcher3/common/model/DefaultLayoutParser;)I
    .locals 4
    .param p1, "loader"    # Lcom/android/launcher3/common/model/DefaultLayoutParser;

    .prologue
    .line 2222
    sget-object v1, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/common/model/DefaultLayoutParser;->loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    move-result v0

    .line 2224
    .local v0, "count":I
    const-string v1, "favorites"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2225
    const-string v1, "workspaceScreens"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 2227
    return v0
.end method

.method public restoreScreens(ILjava/lang/String;)V
    .locals 6
    .param p1, "pageCount"    # I
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 2231
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2232
    .local v1, "values":Landroid/content/ContentValues;
    const/4 v0, 0x0

    .local v0, "rank":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 2233
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2234
    const-string v2, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2235
    const-string v2, "screenRank"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2236
    sget-object v2, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x0

    invoke-static {v2, p2, v3, v1}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 2237
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed restore screens"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2232
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2240
    :cond_1
    return-void
.end method

.method public setMaxScreenId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 712
    iput-wide p1, p0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 713
    return-void
.end method

.method public declared-synchronized switchTable(IZ)Z
    .locals 26
    .param p1, "mode"    # I
    .param p2, "settingValue"    # Z

    .prologue
    .line 2532
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 2567
    :try_start_0
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable mode error : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2568
    const/16 v19, 0x0

    .line 2631
    :goto_0
    monitor-exit p0

    return v19

    .line 2534
    :pswitch_0
    :try_start_1
    const-string v9, "favorites"

    .line 2535
    .local v9, "oriFavoritesTbl":Ljava/lang/String;
    const-string v10, "workspaceScreens"

    .line 2536
    .local v10, "oriWorkspaceScreensTbl":Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v7, "favorites_homeOnly"

    .line 2537
    .local v7, "oldFavoritesTbl":Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_1

    const-string v5, "favorites_homeApps"

    .line 2538
    .local v5, "newFavoritesTbl":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_2

    const-string v8, "workspaceScreens_homeOnly"

    .line 2540
    .local v8, "oldWorkspaceScreensTbl":Ljava/lang/String;
    :goto_3
    if-eqz p2, :cond_3

    const-string v6, "workspaceScreens_homeApps"

    .line 2571
    .local v6, "newWorkspaceScreensTbl":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_c

    .line 2572
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " and "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is already existed"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    const/16 v19, 0x1

    goto :goto_0

    .line 2536
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_0
    const-string v7, "favorites_homeApps"

    goto :goto_1

    .line 2537
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :cond_1
    const-string v5, "favorites_homeOnly"

    goto :goto_2

    .line 2538
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :cond_2
    const-string v8, "workspaceScreens_homeApps"

    goto :goto_3

    .line 2540
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_3
    const-string v6, "workspaceScreens_homeOnly"

    goto :goto_4

    .line 2545
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .end local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    :pswitch_1
    const-string v9, "favorites"

    .line 2546
    .restart local v9    # "oriFavoritesTbl":Ljava/lang/String;
    const-string v10, "workspaceScreens"

    .line 2547
    .restart local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    if-eqz p2, :cond_4

    const-string v7, "favorites_easy"

    .line 2548
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :goto_5
    if-eqz p2, :cond_5

    const-string v5, "favorites_standard"

    .line 2549
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :goto_6
    if-eqz p2, :cond_6

    const-string v8, "workspaceScreens_easy"

    .line 2551
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :goto_7
    if-eqz p2, :cond_7

    const-string v6, "workspaceScreens_standard"

    .line 2553
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    :goto_8
    goto :goto_4

    .line 2547
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_4
    const-string v7, "favorites_standard"

    goto :goto_5

    .line 2548
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :cond_5
    const-string v5, "favorites_easy"

    goto :goto_6

    .line 2549
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :cond_6
    const-string v8, "workspaceScreens_standard"

    goto :goto_7

    .line 2551
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_7
    const-string v6, "workspaceScreens_easy"

    goto :goto_8

    .line 2556
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .end local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    :pswitch_2
    const-string v9, "favorites_standard"

    .line 2557
    .restart local v9    # "oriFavoritesTbl":Ljava/lang/String;
    const-string v10, "workspaceScreens_standard"

    .line 2558
    .restart local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    if-eqz p2, :cond_8

    const-string v7, "favorites_homeOnly"

    .line 2559
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :goto_9
    if-eqz p2, :cond_9

    const-string v5, "favorites_homeApps"

    .line 2560
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :goto_a
    if-eqz p2, :cond_a

    const-string v8, "workspaceScreens_homeOnly"

    .line 2562
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :goto_b
    if-eqz p2, :cond_b

    const-string v6, "workspaceScreens_homeApps"

    .line 2564
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    :goto_c
    goto/16 :goto_4

    .line 2558
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_8
    const-string v7, "favorites_homeApps"

    goto :goto_9

    .line 2559
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    :cond_9
    const-string v5, "favorites_homeOnly"

    goto :goto_a

    .line 2560
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    :cond_a
    const-string v8, "workspaceScreens_homeApps"

    goto :goto_b

    .line 2562
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    :cond_b
    const-string v6, "workspaceScreens_homeOnly"

    goto :goto_c

    .line 2578
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    :cond_c
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2580
    :try_start_2
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable mode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " value : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 2582
    .local v4, "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->getHideItems(Ljava/util/HashSet;)V

    .line 2584
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    .line 2585
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    .line 2584
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 2586
    .local v11, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v22, "com.sec.android.app.launcher.hideapps.prefs"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2588
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 2589
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static/range {v19 .. v19}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v18

    .line 2590
    .local v18, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    .line 2591
    .local v20, "userSerialNumber":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2, v7}, Lcom/android/launcher3/common/model/FavoritesProvider;->createFavoritesTable(JLjava/lang/String;)V

    .line 2593
    .end local v18    # "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    .end local v20    # "userSerialNumber":J
    :cond_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_e

    .line 2594
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->createScreensTable(Ljava/lang/String;)V

    .line 2597
    :cond_e
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2598
    invoke-static {v5}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2597
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2599
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v7}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2600
    invoke-static {v9}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2599
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2601
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2602
    invoke-static {v6}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2601
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2603
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ALTER table "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v8}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " rename to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 2604
    invoke-static {v10}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2603
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2606
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    .line 2607
    .local v12, "prevItemId":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    .line 2608
    .local v14, "prevScreenId":J
    const-string v19, "favorites"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    .line 2609
    const-string v19, "workspaceScreens"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    .line 2610
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2611
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable. old/new Max Item Id: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    const-string v19, "FavoritesProvider"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "switchTable. old/new Max Screen Id: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2614
    :try_start_3
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2617
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxItemId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-nez v19, :cond_f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher3/common/model/FavoritesProvider;->mMaxScreenId:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x0

    cmp-long v19, v22, v24

    if-nez v19, :cond_f

    const-wide/16 v22, 0x0

    cmp-long v19, v12, v22

    if-eqz v19, :cond_f

    .line 2618
    const-string v19, "FavoritesProvider"

    const-string v22, "switchTable. Current page is required load default layout"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v17

    .line 2620
    .local v17, "spKey":Ljava/lang/String;
    sget-object v19, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 2621
    .local v16, "sp":Landroid/content/SharedPreferences;
    const-string v19, "EMPTY_DATABASE_SWITCHED"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_f

    .line 2622
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v22, "EMPTY_DATABASE_SWITCHED"

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2626
    .end local v16    # "sp":Landroid/content/SharedPreferences;
    .end local v17    # "spKey":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/model/FavoritesProvider;->tableExists(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_10

    .line 2627
    const/16 v19, 0x1

    goto/16 :goto_0

    .line 2614
    .end local v4    # "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "prefs":Landroid/content/SharedPreferences;
    .end local v12    # "prevItemId":J
    .end local v14    # "prevScreenId":J
    :catchall_0
    move-exception v19

    sget-object v22, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2532
    .end local v5    # "newFavoritesTbl":Ljava/lang/String;
    .end local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .end local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .end local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .end local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .end local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    :catchall_1
    move-exception v19

    monitor-exit p0

    throw v19

    .line 2630
    .restart local v4    # "hideItems":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v5    # "newFavoritesTbl":Ljava/lang/String;
    .restart local v6    # "newWorkspaceScreensTbl":Ljava/lang/String;
    .restart local v7    # "oldFavoritesTbl":Ljava/lang/String;
    .restart local v8    # "oldWorkspaceScreensTbl":Ljava/lang/String;
    .restart local v9    # "oriFavoritesTbl":Ljava/lang/String;
    .restart local v10    # "oriWorkspaceScreensTbl":Ljava/lang/String;
    .restart local v11    # "prefs":Landroid/content/SharedPreferences;
    .restart local v12    # "prevItemId":J
    .restart local v14    # "prevScreenId":J
    :cond_10
    :try_start_4
    const-string v19, "FavoritesProvider"

    const-string v22, "switchTable mode error"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2631
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public tableExists(Ljava/lang/String;)Z
    .locals 14
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v13, 0x0

    const/4 v6, 0x0

    .line 1047
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 1065
    :goto_0
    return v13

    .line 1051
    :cond_0
    const/4 v12, 0x0

    .line 1052
    .local v12, "exist":Z
    sget-object v0, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sqlite_master"

    new-array v3, v1, [Ljava/lang/String;

    const-string v4, "tbl_name"

    aput-object v4, v3, v13

    const-string v4, "tbl_name = ?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v13

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    move-object v10, v6

    invoke-virtual/range {v0 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1056
    .local v11, "c":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    .line 1058
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v12, v1

    .line 1060
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1064
    :cond_1
    const-string v0, "FavoritesProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tableExists tableName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v12

    .line 1065
    goto :goto_0

    :cond_2
    move v12, v13

    .line 1058
    goto :goto_1

    .line 1060
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public updateAppItems(Ljava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2671
    .local p1, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;>;"
    const/4 v8, 0x0

    .line 2672
    .local v8, "insertFolder":Landroid/database/sqlite/SQLiteStatement;
    const/4 v13, 0x0

    .line 2673
    .local v13, "updateFolder":Landroid/database/sqlite/SQLiteStatement;
    const/4 v15, 0x0

    .line 2674
    .local v15, "updateTitle":Landroid/database/sqlite/SQLiteStatement;
    const/4 v7, 0x0

    .line 2675
    .local v7, "insertApp":Landroid/database/sqlite/SQLiteStatement;
    const/4 v11, 0x0

    .line 2676
    .local v11, "updateApp":Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x0

    .line 2677
    .local v4, "deleteItem":Landroid/database/sqlite/SQLiteStatement;
    const/4 v12, 0x0

    .line 2678
    .local v12, "updateColor":Landroid/database/sqlite/SQLiteStatement;
    const/4 v14, 0x0

    .line 2680
    .local v14, "updateRestore":Landroid/database/sqlite/SQLiteStatement;
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sContext:Landroid/content/Context;

    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v16

    .line 2683
    .local v16, "userManager":Lcom/android/launcher3/common/compat/UserManagerCompat;
    :try_start_0
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2684
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;

    .line 2685
    .local v10, "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->action:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    goto :goto_0

    .line 2688
    :pswitch_0
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites insert folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    if-nez v8, :cond_0

    .line 2692
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "INSERT into favorites (_id,screen,rank,title,color) values(?,?,?,?,?)"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    .line 2694
    :cond_0
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2695
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2696
    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2697
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    .line 2698
    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2702
    :goto_1
    const/16 v18, 0x5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v20, -0x1

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v8, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2704
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites insert folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 2873
    .end local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :catch_0
    move-exception v5

    .line 2874
    .local v5, "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :try_start_1
    const-string v17, "FavoritesProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "SQLiteReadOnlyDatabaseException:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2876
    if-eqz v8, :cond_1

    .line 2877
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2879
    :cond_1
    if-eqz v13, :cond_2

    .line 2880
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2882
    :cond_2
    if-eqz v15, :cond_3

    .line 2883
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2885
    :cond_3
    if-eqz v7, :cond_4

    .line 2886
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2888
    :cond_4
    if-eqz v11, :cond_5

    .line 2889
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2891
    :cond_5
    if-eqz v4, :cond_6

    .line 2892
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2894
    :cond_6
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2897
    .end local v5    # "e":Landroid/database/sqlite/SQLiteReadOnlyDatabaseException;
    :goto_2
    return-void

    .line 2700
    .restart local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :cond_7
    const/16 v18, 0x4

    :try_start_2
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 2876
    .end local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_8

    .line 2877
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2879
    :cond_8
    if-eqz v13, :cond_9

    .line 2880
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2882
    :cond_9
    if-eqz v15, :cond_a

    .line 2883
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2885
    :cond_a
    if-eqz v7, :cond_b

    .line 2886
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2888
    :cond_b
    if-eqz v11, :cond_c

    .line 2889
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2891
    :cond_c
    if-eqz v4, :cond_d

    .line 2892
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2894
    :cond_d
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v17

    .line 2712
    .restart local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :pswitch_1
    :try_start_3
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    if-nez v13, :cond_e

    .line 2716
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set screen=?,rank=?,title=? where _id=?"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 2718
    :cond_e
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2719
    const/16 v18, 0x2

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2720
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 2721
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2726
    :goto_3
    const/16 v18, 0x4

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v13, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2728
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update folder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2723
    :cond_f
    const/16 v18, 0x3

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_3

    .line 2736
    :pswitch_2
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update title: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2738
    if-nez v15, :cond_10

    .line 2739
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set title=? where _id=?"

    .line 2740
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v15

    .line 2742
    :cond_10
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    .line 2743
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2747
    :goto_4
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2748
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2745
    :cond_11
    const/16 v18, 0x1

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_4

    .line 2753
    :pswitch_3
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 2754
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 2758
    .local v6, "flattenComponent":Ljava/lang/String;
    :goto_5
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites create app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    if-nez v7, :cond_12

    .line 2767
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "INSERT into favorites (_id,container,screen,rank,hidden,title,intent,profileId,itemtype,modified,restored) values(?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    .line 2769
    :cond_12
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2770
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2771
    const/16 v18, 0x3

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2772
    const/16 v18, 0x4

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2773
    const/16 v18, 0x5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2774
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_14

    .line 2775
    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2780
    :goto_6
    new-instance v18, Landroid/content/Intent;

    const-string v19, "android.intent.action.MAIN"

    const/16 v20, 0x0

    invoke-direct/range {v18 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v19, "android.intent.category.LAUNCHER"

    .line 2781
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    .line 2782
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v18

    const/high16 v19, 0x10200000

    .line 2783
    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v9

    .line 2785
    .local v9, "intent":Landroid/content/Intent;
    const/16 v18, 0x7

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2787
    const/16 v18, 0x8

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2788
    const/16 v18, 0x9

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2789
    const/16 v18, 0xa

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2790
    const/16 v18, 0xb

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->status:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2793
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    .line 2794
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->component:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    .line 2798
    :goto_7
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites create app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->itemtype:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->modified:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2756
    .end local v6    # "flattenComponent":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_13
    const-string v6, "component is null"

    .restart local v6    # "flattenComponent":Ljava/lang/String;
    goto/16 :goto_5

    .line 2777
    :cond_14
    const/16 v18, 0x6

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_6

    .line 2796
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_15
    const-string v6, "component is null"

    goto/16 :goto_7

    .line 2808
    .end local v6    # "flattenComponent":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_4
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    if-nez v11, :cond_16

    .line 2813
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set container=?,screen=?,rank=?,hidden=?,title=?,profileId=? where _id=?"

    .line 2814
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 2816
    :cond_16
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2817
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2818
    const/16 v18, 0x3

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2819
    const/16 v18, 0x4

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2820
    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    if-nez v18, :cond_17

    .line 2821
    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2825
    :goto_8
    const/16 v18, 0x6

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v20

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2826
    const/16 v18, 0x7

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v11, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2828
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update app: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->container:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->screen:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->rank:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2823
    :cond_17
    const/16 v18, 0x5

    iget-object v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->title:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto/16 :goto_8

    .line 2836
    :pswitch_5
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites delete item: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    if-nez v4, :cond_18

    .line 2839
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "DELETE from favorites where _id=?"

    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 2841
    :cond_18
    const/16 v18, 0x1

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2842
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2846
    :pswitch_6
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update color: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v20, -0x1

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    if-nez v12, :cond_19

    .line 2849
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set color=? where _id=?"

    .line 2850
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 2853
    :cond_19
    const/16 v18, 0x1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v20, -0x1

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2854
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v12, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2855
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2859
    :pswitch_7
    const-string v18, "FavoritesProvider"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "apps favorites update restored ID: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    if-nez v14, :cond_1a

    .line 2862
    sget-object v18, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v19, "UPDATE favorites set restored=? where _id=?"

    .line 2863
    invoke-virtual/range {v18 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 2866
    :cond_1a
    const/16 v18, 0x1

    const-wide/16 v20, 0x0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2867
    const/16 v18, 0x2

    iget-wide v0, v10, Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;->id:J

    move-wide/from16 v20, v0

    move/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v14, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2868
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto/16 :goto_0

    .line 2872
    .end local v10    # "update":Lcom/android/launcher3/common/model/FavoritesProvider$AppOrderModify;
    :cond_1b
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2876
    if-eqz v8, :cond_1c

    .line 2877
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2879
    :cond_1c
    if-eqz v13, :cond_1d

    .line 2880
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2882
    :cond_1d
    if-eqz v15, :cond_1e

    .line 2883
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2885
    :cond_1e
    if-eqz v7, :cond_1f

    .line 2886
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2888
    :cond_1f
    if-eqz v11, :cond_20

    .line 2889
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2891
    :cond_20
    if-eqz v4, :cond_21

    .line 2892
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 2894
    :cond_21
    sget-object v17, Lcom/android/launcher3/common/model/FavoritesProvider;->sDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_2

    .line 2685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
