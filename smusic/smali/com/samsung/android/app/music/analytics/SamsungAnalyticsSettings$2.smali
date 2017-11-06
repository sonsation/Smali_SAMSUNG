.class final Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;
.super Ljava/lang/Thread;
.source "SamsungAnalyticsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings;->setDailyLogging(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 278
    const-string v12, "SamsungAnalyticsSettings"

    const-string/jumbo v13, "setDailyLogging - run"

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->getPref(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    const-string/jumbo v13, "settings_logging_interval_one_day_last_time"

    const-wide/16 v14, 0x0

    invoke-interface {v12, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 282
    .local v6, "lastLoggingTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 283
    .local v4, "currentTime":J
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-lez v12, :cond_0

    .line 284
    sub-long v12, v4, v6

    const-wide/32 v14, 0x5265c00

    cmp-long v12, v12, v14

    if-gez v12, :cond_0

    .line 285
    const-string v12, "SamsungAnalyticsSettings"

    const-string/jumbo v13, "setDailyLogging - (currentTime - lastLoggingTime) < ONE_DAY"

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/milk/RadioControlHelper;->getCurrentStationId()Ljava/lang/String;

    move-result-object v9

    .line 292
    .local v9, "stationId":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 293
    const-string v12, "SamsungAnalyticsSettings"

    const-string/jumbo v13, "setDailyLogging : stationId is not null"

    invoke-static {v12, v13}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12, v9}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getStation(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/common/model/Station;

    move-result-object v8

    .line 295
    .local v8, "station":Lcom/samsung/android/app/music/common/model/Station;
    if-eqz v8, :cond_1

    .line 296
    invoke-virtual {v8}, Lcom/samsung/android/app/music/common/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v10

    .line 297
    .local v10, "strGenreName":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 298
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1015"

    invoke-virtual {v12, v13, v14, v10}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .end local v8    # "station":Lcom/samsung/android/app/music/common/model/Station;
    .end local v10    # "strGenreName":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v12

    invoke-virtual {v12}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getUser()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v11

    .line 305
    .local v11, "user":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v12

    if-eqz v12, :cond_2

    .line 306
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1016"

    const-string v15, "Sign-in"

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :goto_1
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_3

    .line 314
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1017"

    const-string v15, "Yes"

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/app/music/common/util/MediaDbUtils;->getPlaylistCount(Landroid/content/Context;)I

    move-result v2

    .line 323
    .local v2, "count":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "0052"

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    .end local v2    # "count":I
    :goto_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/app/music/common/util/HeartsUtils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v2

    .line 331
    .restart local v2    # "count":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1013"

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 337
    .end local v2    # "count":I
    :goto_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/app/music/service/radioqueue/RadioStationResolver;->getCountOfMyStations(Landroid/content/Context;)I

    move-result v2

    .line 338
    .restart local v2    # "count":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "0014"

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 344
    .end local v2    # "count":I
    :goto_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    invoke-static {v12}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->getFavoriteTrackCount(Landroid/content/Context;)I

    move-result v2

    .line 345
    .restart local v2    # "count":I
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1012"

    int-to-long v0, v2

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    .end local v2    # "count":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/app/music/analytics/SamsungAnalyticsSettings$2;->val$context:Landroid/content/Context;

    const-string/jumbo v13, "settings_logging_interval_one_day_last_time"

    invoke-static {v12, v13, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsPreference;->setValue(Landroid/content/Context;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 309
    :cond_2
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1016"

    const-string v15, "Sign-out"

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 317
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v12

    const-string v13, "500"

    const-string v14, "1017"

    const-string v15, "No"

    invoke-virtual {v12, v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 325
    :catch_0
    move-exception v3

    .line 326
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 332
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 333
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 346
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 347
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 339
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v12

    goto :goto_5
.end method
