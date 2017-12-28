.class public Lcom/android/launcher3/LauncherProvider;
.super Landroid/content/ContentProvider;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/LauncherProvider$SqlArguments;,
        Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.android.app.launcher.settings"

.field private static final DATABASE_VERSION:I = 0x1e

.field public static final EMPTY_DATABASE_CREATED:Ljava/lang/String; = "EMPTY_DATABASE_CREATED"

.field private static final LOGD:Z = false

.field public static final TABLE_FAVORITES:Ljava/lang/String; = "favorites"

.field public static final TABLE_WORKSPACE_SCREENS:Ljava/lang/String; = "workspaceScreens"

.field private static final TAG:Ljava/lang/String; = "LauncherProvider"


# instance fields
.field private mAppState:Lcom/android/launcher3/LauncherAppState;

.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

.field private mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

.field private mRemoteConfigurationManager:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method static addModifiedTime(Landroid/content/ContentValues;)V
    .locals 4
    .param p0, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 324
    const-string v0, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 325
    return-void
.end method

.method public static dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;
    .param p2, "nullColumnHack"    # Ljava/lang/String;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 133
    if-nez p3, :cond_0

    .line 134
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to insert null values"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    const-string v0, "_id"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error: attempting to add item without specifying an id"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/android/launcher3/common/model/FavoritesProvider;->checkId(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 141
    invoke-virtual {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method private notifyListeners()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->dataChanged(Landroid/content/Context;)V

    .line 321
    return-void
.end method

.method private registerBnrCallBack()V
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 156
    .local v0, "callback":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/common/bnr/LauncherBnrCallBack;>;"
    new-instance v1, Lcom/android/launcher3/home/HomeBnrHelper;

    invoke-direct {v1}, Lcom/android/launcher3/home/HomeBnrHelper;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Lcom/android/launcher3/allapps/AppsBnrHelper;

    invoke-direct {v1}, Lcom/android/launcher3/allapps/AppsBnrHelper;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-static {v0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->registerBnrCallBack(Ljava/util/ArrayList;)V

    .line 160
    return-void
.end method

.method private reloadLauncherIfExternal()V
    .locals 3

    .prologue
    .line 145
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 146
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    .line 147
    .local v0, "app":Lcom/android/launcher3/LauncherAppState;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->reloadWorkspace()V

    .line 151
    .end local v0    # "app":Lcom/android/launcher3/LauncherAppState;
    :cond_0
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 553
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 554
    const-string v1, "notify"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 555
    .local v0, "notify":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    .line 563
    .end local v0    # "notify":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 561
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 219
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 221
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    .line 222
    .local v1, "result":[Landroid/content/ContentProviderResult;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 223
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->reloadLauncherIfExternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v1

    .end local v1    # "result":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 190
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 192
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 193
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 195
    :try_start_0
    array-length v3, p2

    .line 196
    .local v3, "numValues":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 197
    aget-object v4, p2, v2

    invoke-static {v4}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 198
    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v6, p2, v2

    invoke-static {v1, v4, v5, v6}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 199
    const/4 v4, 0x0

    .line 204
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 212
    :goto_1
    return v4

    .line 196
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 207
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 210
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 212
    array-length v4, p2

    goto :goto_1

    .line 204
    .end local v2    # "i":I
    .end local v3    # "numValues":I
    :catchall_0
    move-exception v4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 262
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mRemoteConfigurationManager:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->handleRemoteConfigurationCall(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 315
    :cond_2
    :goto_1
    return-object v0

    .line 262
    :pswitch_0
    const-string v4, "appWidgetReset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 267
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v2, :cond_3

    .line 268
    const-string v2, "LauncherProvider"

    const-string v3, "[SPRINT] Resetting App Widget Listener"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v2}, Lcom/android/launcher3/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    .line 273
    :goto_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    .local v0, "result":Landroid/os/Bundle;
    const-string v2, "SUCCESS"

    invoke-virtual {v0, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 271
    .end local v0    # "result":Landroid/os/Bundle;
    :cond_3
    const-string v2, "LauncherProvider"

    const-string v3, "[SPRINT] App Widget Listener is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_5
    :goto_3
    packed-switch v2, :pswitch_data_2

    .line 315
    const/4 v0, 0x0

    goto :goto_1

    .line 282
    :sswitch_0
    const-string v4, "get_boolean_setting"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v2, v3

    goto :goto_3

    :sswitch_1
    const-string v4, "set_boolean_setting"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_2
    const-string v4, "getDataBaseVersion"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x2

    goto :goto_3

    .line 284
    :pswitch_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    .restart local v0    # "result":Landroid/os/Bundle;
    const-string v2, "value"

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 287
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "default_value"

    .line 288
    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-interface {v3, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 285
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 293
    .end local v0    # "result":Landroid/os/Bundle;
    :pswitch_3
    const-string v2, "value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 294
    .local v1, "value":Z
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 295
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 294
    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 296
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 297
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    if-eqz v2, :cond_7

    .line 298
    const-string v2, "pref_home_screen_mode"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 299
    const/4 v1, 0x0

    .line 301
    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-interface {v2, p2, v1}, Lcom/android/launcher3/LauncherProviderChangeListener;->onSettingsChanged(Ljava/lang/String;Z)V

    .line 303
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .restart local v0    # "result":Landroid/os/Bundle;
    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 308
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v1    # "value":Z
    :pswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 309
    .restart local v0    # "result":Landroid/os/Bundle;
    const-string v2, "getDataBaseVersion"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    const-string v2, "DBVersion"

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 262
    :pswitch_data_0
    .packed-switch 0x77bbdc8a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 282
    :sswitch_data_0
    .sparse-switch
        -0x6da47379 -> :sswitch_2
        -0x6b7b0db0 -> :sswitch_0
        0x3881875c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public clearFlagEmptyDbCreated()V
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "spKey":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 337
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "EMPTY_DATABASE_CREATED"

    .line 338
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 339
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 340
    return-void
.end method

.method public declared-synchronized createEmptyDB()V
    .locals 2

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    monitor-exit p0

    return-void

    .line 331
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 232
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 234
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 235
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 236
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 239
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 241
    return v1
.end method

.method public getRemoteConfigurationManager()Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mRemoteConfigurationManager:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 107
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, v1, v1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    iget-object v1, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.dir/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 111
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vnd.android.cursor.item/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v4, 0x0

    .line 164
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 167
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 168
    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeExternalAdd(Landroid/content/ContentValues;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v4

    .line 173
    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 174
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 175
    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-static {v1, v5, v4, p2}, Lcom/android/launcher3/LauncherProvider;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 176
    .local v2, "rowId":J
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-ltz v5, :cond_0

    .line 178
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 179
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 182
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    move-object v4, p1

    .line 184
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 6

    .prologue
    .line 78
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LauncherAccessTestStart: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 81
    .local v1, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->init(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 85
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->setLauncherProvider(Lcom/android/launcher3/LauncherProvider;)V

    .line 86
    new-instance v2, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-direct {v2, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    .line 87
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 89
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDesktopModeManager.isDesktopMode() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mAppState:Lcom/android/launcher3/LauncherAppState;

    .line 93
    new-instance v2, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mRemoteConfigurationManager:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    .line 95
    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->registerBnrCallBack()V

    .line 96
    const/4 v2, 0x1

    return v2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 119
    new-instance v8, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v8, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 120
    .local v8, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 121
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    iget-object v2, v8, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 123
    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 124
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v8, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v4, v8, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 125
    .local v9, "result":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v9, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 129
    :cond_0
    return-object v9
.end method

.method public setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/launcher3/LauncherProviderChangeListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->access$002(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;

    .line 102
    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider;->mRemoteConfigurationManager:Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/remoteconfiguration/RemoteConfigurationManager;->setLauncherProviderChangeListener(Lcom/android/launcher3/LauncherProviderChangeListener;)V

    .line 103
    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 246
    new-instance v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/LauncherProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 248
    .local v0, "args":Lcom/android/launcher3/LauncherProvider$SqlArguments;
    invoke-static {p2}, Lcom/android/launcher3/LauncherProvider;->addModifiedTime(Landroid/content/ContentValues;)V

    .line 249
    iget-object v3, p0, Lcom/android/launcher3/LauncherProvider;->mOpenHelper:Lcom/android/launcher3/LauncherProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 250
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v3, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/launcher3/LauncherProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "count":I
    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider;->notifyListeners()V

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherProvider;->sendNotify(Landroid/net/Uri;)V

    .line 256
    return v1
.end method
