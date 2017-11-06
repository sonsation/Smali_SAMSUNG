.class public Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;
.super Ljava/lang/Object;
.source "FeatureLogger.java"


# static fields
.field private static final ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final APP_ID:Ljava/lang/String; = "app_id"

.field private static final DEBUG:Z = false

.field public static final EXTRA:Ljava/lang/String; = "extra"

.field private static final EXTRA_DATA:Ljava/lang/String; = "data"

.field public static final FEATURE:Ljava/lang/String; = "feature"

.field private static final LOGGER_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final MULTI_ACTION_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

.field private static final MULTI_STATUS_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

.field private static final STATUS_LOGGING:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

.field private static final SUPPORT_FW_FEATURE_LOGGING:Z

.field public static final VALUE:Ljava/lang/String; = "value"

.field private static sAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->SUPPORT_FW_FEATURE_LOGGING:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertListItemIdToString(J)Ljava/lang/String;
    .locals 2
    .param p0, "listItemId"    # J

    .prologue
    .line 193
    long-to-int v1, p0

    packed-switch v1, :pswitch_data_0

    .line 207
    const-string v0, "My playlists"

    .line 210
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 195
    .end local v0    # "extra":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Favourite tracks"

    .line 196
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v0    # "extra":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Most played"

    .line 199
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v0    # "extra":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Recently added"

    .line 202
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 204
    .end local v0    # "extra":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Recently played"

    .line 205
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertListTypeToMostPlayedLoggingString(I)Ljava/lang/String;
    .locals 2
    .param p0, "listType"    # I

    .prologue
    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "extra":Ljava/lang/String;
    const v1, 0x10003

    if-ne p0, v1, :cond_1

    .line 216
    const-string v0, "Most played artist"

    .line 220
    :cond_0
    :goto_0
    return-object v0

    .line 217
    :cond_1
    const v1, 0x10002

    if-ne p0, v1, :cond_0

    .line 218
    const-string v0, "Most played album"

    goto :goto_0
.end method

.method public static convertListTypeToTabString(I)Ljava/lang/String;
    .locals 3
    .param p0, "listType"    # I

    .prologue
    .line 156
    sparse-switch p0, :sswitch_data_0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ListType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "extra":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 159
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_0
    const-string v0, "Playlists"

    .line 160
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 162
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_1
    const-string v0, "Tracks"

    .line 163
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 166
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_2
    const-string v0, "Albums"

    .line 167
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_3
    const-string v0, "Artists"

    .line 171
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 174
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_4
    const-string v0, "Genres"

    .line 175
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_5
    const-string v0, "Folders"

    .line 179
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 182
    .end local v0    # "extra":Ljava/lang/String;
    :sswitch_6
    const-string v0, "Composers"

    .line 183
    .restart local v0    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x10002 -> :sswitch_2
        0x10003 -> :sswitch_3
        0x10004 -> :sswitch_0
        0x10006 -> :sswitch_4
        0x10007 -> :sswitch_5
        0x10008 -> :sswitch_6
        0x100002 -> :sswitch_2
        0x100003 -> :sswitch_3
        0x100004 -> :sswitch_0
        0x100006 -> :sswitch_4
        0x100007 -> :sswitch_5
        0x100008 -> :sswitch_6
        0x110001 -> :sswitch_1
    .end sparse-switch
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v1, "row":Landroid/content/ContentValues;
    const-string v2, "app_id"

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    if-eqz p2, :cond_1

    .line 85
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    .line 88
    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 95
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->printLog(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public static insertMultiLog(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 105
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    .line 124
    :goto_0
    return-void

    .line 109
    :cond_0
    array-length v4, p1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 110
    .local v1, "value":Landroid/content/ContentValues;
    const-string v5, "app_id"

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    array-length v2, p1

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 115
    const-string v2, "com.samsung.android.providers.context.log.action.USE_MULTI_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 121
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 123
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->printLog([Landroid/content/ContentValues;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v2, "data"

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method

.method public static loggingMusicStatus(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "othersValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 284
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->updateStatusLog(Landroid/content/Context;[Landroid/content/ContentValues;)V

    .line 285
    return-void
.end method

.method public static loggingPlayFromLibrary(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listType"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "trackCount"    # I

    .prologue
    .line 225
    if-nez p3, :cond_0

    .line 256
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v6, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 230
    .local v5, "playFromTAB":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "PLTB"

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v7, "extra"

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListTypeToTabString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const v7, 0x100004

    if-ne v7, p1, :cond_1

    .line 237
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 242
    .local v2, "listItemId":J
    :goto_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 243
    .local v4, "playFromPlaylistTrack":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "PLPL"

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v7, "extra"

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListItemIdToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    const-wide/16 v8, -0xb

    cmp-long v7, v8, v2

    if-nez v7, :cond_1

    .line 248
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 249
    .local v1, "favourite":Landroid/content/ContentValues;
    const-string v7, "feature"

    const-string v8, "CTFA"

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v7, "extra"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .end local v1    # "favourite":Landroid/content/ContentValues;
    .end local v2    # "listItemId":J
    .end local v4    # "playFromPlaylistTrack":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ContentValues;

    invoke-static {p0, v7}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertMultiLog(Landroid/content/Context;[Landroid/content/ContentValues;)V

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 240
    const-wide/16 v2, -0x1

    .restart local v2    # "listItemId":J
    goto :goto_1
.end method

.method public static loggingPlayFromShortCut(Landroid/content/Context;JI)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "playlistId"    # J
    .param p3, "trackCount"    # I

    .prologue
    .line 259
    if-nez p3, :cond_0

    .line 281
    :goto_0
    return-void

    .line 262
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 265
    .local v1, "tab":Landroid/content/ContentValues;
    const-string v4, "feature"

    const-string v5, "PLCV"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v4, "extra"

    const-string v5, "Playlists"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v2, "track":Landroid/content/ContentValues;
    const-string v4, "feature"

    const-string v5, "PLCV"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v4, "extra"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->convertListItemIdToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const-wide/16 v4, -0xb

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 275
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 276
    .local v0, "favourite":Landroid/content/ContentValues;
    const-string v4, "feature"

    const-string v5, "CTFA"

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v4, "extra"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v0    # "favourite":Landroid/content/ContentValues;
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/content/ContentValues;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    invoke-static {p0, v4}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertMultiLog(Landroid/content/Context;[Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method private static printLog(Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "value"    # Landroid/content/ContentValues;

    .prologue
    .line 298
    return-void
.end method

.method private static printLog([Landroid/content/ContentValues;)V
    .locals 0
    .param p0, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 289
    return-void
.end method

.method public static setAppId(Ljava/lang/String;)V
    .locals 0
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 54
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private static updateStatusLog(Landroid/content/Context;[Landroid/content/ContentValues;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # [Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 133
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->SUPPORT_FW_FEATURE_LOGGING:Z

    if-nez v2, :cond_0

    .line 152
    :goto_0
    return-void

    .line 137
    :cond_0
    array-length v4, p1

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, p1, v2

    .line 138
    .local v1, "value":Landroid/content/ContentValues;
    const-string v5, "app_id"

    sget-object v6, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->sAppId:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 140
    .end local v1    # "value":Landroid/content/ContentValues;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    array-length v2, p1

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    .line 143
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v2, "data"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 149
    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 151
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->printLog([Landroid/content/ContentValues;)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v2, "com.samsung.android.providers.context.log.action.REPORT_APP_STATUS_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v2, "data"

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2
.end method
