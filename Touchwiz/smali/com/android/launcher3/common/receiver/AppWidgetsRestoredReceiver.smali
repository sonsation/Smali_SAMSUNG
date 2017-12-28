.class public Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetsRestoredReceiver.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetsRestoredReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static restoreAppWidgetIds(Landroid/content/Context;[I[I)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldWidgetIds"    # [I
    .param p2, "newWidgetIds"    # [I

    .prologue
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 53
    .local v1, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .local v10, "idsToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static/range {p0 .. p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 56
    .local v15, "widgets":Landroid/appwidget/AppWidgetManager;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v9, v2, :cond_3

    .line 57
    const-string v2, "AppWidgetsRestoredReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Widget state restore id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p2, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    aget v2, p2, v9

    invoke-virtual {v15, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 61
    .local v11, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-static {v11}, Lcom/android/launcher3/LauncherModel;->isValidProvider(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    const/4 v13, 0x4

    .line 68
    .local v13, "state":I
    :goto_1
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v14, "values":Landroid/content/ContentValues;
    const-string v2, "appWidgetId"

    aget v3, p2, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 70
    const-string v2, "restored"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aget v3, p1, v9

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    .line 74
    .local v5, "widgetIdParams":[Ljava/lang/String;
    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "appWidgetId=? and (restored & 1) = 1"

    invoke-virtual {v1, v2, v14, v3, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 76
    .local v12, "result":I
    if-nez v12, :cond_1

    .line 77
    sget-object v2, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v6, "appWidgetId"

    aput-object v6, v3, v4

    const-string v4, "appWidgetId=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 81
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    aget v2, p2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 56
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 65
    .end local v5    # "widgetIdParams":[Ljava/lang/String;
    .end local v12    # "result":I
    .end local v13    # "state":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_2
    const/4 v13, 0x2

    .restart local v13    # "state":I
    goto :goto_1

    .line 86
    .restart local v5    # "widgetIdParams":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "result":I
    .restart local v14    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    .line 92
    .end local v5    # "widgetIdParams":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v11    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v12    # "result":I
    .end local v13    # "state":I
    .end local v14    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 93
    new-instance v7, Landroid/appwidget/AppWidgetHost;

    const/16 v2, 0x400

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 95
    .local v7, "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    new-instance v3, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;

    invoke-direct {v3, v10, v7}, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;-><init>(Ljava/util/List;Landroid/appwidget/AppWidgetHost;)V

    sget-object v4, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Void;

    const/16 v16, 0x0

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Void;

    aput-object v2, v6, v16

    .line 103
    invoke-virtual {v3, v4, v6}, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 106
    .end local v7    # "appWidgetHost":Landroid/appwidget/AppWidgetHost;
    :cond_4
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->recreateLauncher(Landroid/content/Context;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 111
    const-string v2, "android.appwidget.action.APPWIDGET_HOST_RESTORED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const-string v2, "appWidgetOldIds"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    .line 113
    .local v1, "oldIds":[I
    const-string v2, "appWidgetIds"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 114
    .local v0, "newIds":[I
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    array-length v2, v1

    array-length v3, v0

    if-ne v2, v3, :cond_1

    .line 115
    invoke-static {p1, v1, v0}, Lcom/android/launcher3/common/receiver/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;[I[I)V

    .line 120
    .end local v0    # "newIds":[I
    .end local v1    # "oldIds":[I
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0    # "newIds":[I
    .restart local v1    # "oldIds":[I
    :cond_1
    const-string v2, "AppWidgetsRestoredReceiver"

    const-string v3, "Invalid host restored received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
