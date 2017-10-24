.class public Lcom/samsung/android/emergencymode/SemEmergencySettings;
.super Ljava/lang/Object;
.source "SemEmergencySettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemEmergencySettings"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 70
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 71
    :cond_0
    return-object v0

    .line 73
    :cond_1
    const/4 v8, 0x0

    .line 74
    .local v8, "ret":Ljava/lang/String;
    const/4 v6, 0x0

    .line 76
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pref=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "selection":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 79
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 81
    .local v8, "ret":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v8    # "ret":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 89
    .end local v3    # "selection":Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_0
    return-object v8

    .line 83
    :catch_0
    move-exception v7

    .line 84
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "SemEmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-eqz v6, :cond_3

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 85
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 86
    if-eqz v6, :cond_4

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 85
    :cond_4
    throw v0
.end method

.method public static getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 119
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 121
    return p2

    .line 123
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static getDouble(Landroid/content/ContentResolver;Ljava/lang/String;D)D
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 169
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SemEmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-wide p2
.end method

.method public static getEmergencyNumber(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "type"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 189
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getEmergencyNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEmergencyNumber(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 210
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 209
    :cond_1
    if-eqz p0, :cond_0

    .line 212
    const/16 v16, 0x0

    .line 213
    .local v16, "ret":Ljava/lang/String;
    const/4 v8, 0x0

    .line 214
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 215
    .local v11, "isReady":Z
    const/4 v12, 0x1

    .line 216
    .local v12, "mState":I
    const-string/jumbo v1, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 218
    .local v13, "mTelephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v15, 0x0

    .line 219
    .local v15, "mccmnc":Ljava/lang/String;
    const/4 v10, 0x0

    .end local v15    # "mccmnc":Ljava/lang/String;
    .local v10, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    if-ge v10, v1, :cond_6

    .line 221
    if-eqz v15, :cond_2

    const-string/jumbo v1, ""

    if-ne v15, v1, :cond_5

    .line 222
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->getSubId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v15

    .line 224
    :cond_3
    invoke-virtual {v13, v10}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v12

    .line 225
    const/4 v1, 0x5

    if-ne v12, v1, :cond_4

    .line 226
    const/4 v11, 0x1

    .line 219
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 221
    :cond_5
    const/4 v1, 0x1

    if-ne v12, v1, :cond_3

    goto :goto_1

    .line 228
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v15, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 229
    .local v14, "mcc":Ljava/lang/String;
    const-string/jumbo v1, "SemEmergencySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEmergencyNumber requested Country : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " sim ready = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mcc=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "selection":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_ECCLIST:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 233
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 234
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 235
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v11}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->makeEmergencyNumber(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 240
    .end local v16    # "ret":Ljava/lang/String;
    :cond_7
    if-eqz v8, :cond_8

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 242
    :cond_8
    if-nez v16, :cond_9

    .line 243
    const-string/jumbo v1, "SemEmergencySettings"

    const-string/jumbo v2, "getEmergencyNumber not found emergency number!"

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "countryCode":Ljava/lang/String;
    const-string/jumbo v1, "China"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 246
    const-string/jumbo v16, "119"

    .line 252
    .end local v4    # "selection":Ljava/lang/String;
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v14    # "mcc":Ljava/lang/String;
    :cond_9
    :goto_2
    return-object v16

    .line 248
    .restart local v4    # "selection":Ljava/lang/String;
    .restart local v7    # "countryCode":Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "mcc":Ljava/lang/String;
    :cond_a
    const-string/jumbo v16, "911"

    .local v16, "ret":Ljava/lang/String;
    goto :goto_2

    .line 237
    .end local v4    # "selection":Ljava/lang/String;
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v14    # "mcc":Ljava/lang/String;
    .local v16, "ret":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 238
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v1, "SemEmergencySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    if-eqz v8, :cond_b

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_b
    const-string/jumbo v1, "SemEmergencySettings"

    const-string/jumbo v2, "getEmergencyNumber not found emergency number!"

    invoke-static {v1, v2}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .restart local v7    # "countryCode":Ljava/lang/String;
    const-string/jumbo v1, "China"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 246
    const-string/jumbo v16, "119"

    .local v16, "ret":Ljava/lang/String;
    goto :goto_2

    .line 248
    .local v16, "ret":Ljava/lang/String;
    :cond_c
    const-string/jumbo v16, "911"

    .local v16, "ret":Ljava/lang/String;
    goto :goto_2

    .line 239
    .end local v7    # "countryCode":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .local v16, "ret":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 240
    if-eqz v8, :cond_d

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_d
    const-string/jumbo v2, "SemEmergencySettings"

    const-string/jumbo v3, "getEmergencyNumber not found emergency number!"

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string/jumbo v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 245
    .restart local v7    # "countryCode":Ljava/lang/String;
    const-string/jumbo v2, "China"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 246
    const-string/jumbo v16, "119"

    .line 239
    .local v16, "ret":Ljava/lang/String;
    :goto_3
    throw v1

    .line 248
    .local v16, "ret":Ljava/lang/String;
    :cond_e
    const-string/jumbo v16, "911"

    .local v16, "ret":Ljava/lang/String;
    goto :goto_3
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 101
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SemEmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 151
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "ret":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "SemEmergencySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-wide p2
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-static {p0, p1}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->get(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 137
    return-object p2

    .line 139
    :cond_0
    return-object v0
.end method

.method private static getSubId(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    .line 256
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 257
    .local v1, "sm":Landroid/telephony/SubscriptionManager;
    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 259
    .local v0, "info":Landroid/telephony/SubscriptionInfo;
    if-eqz v0, :cond_0

    .line 260
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    return v2

    .line 263
    .end local v0    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isPossibleNormalCall()Z
    .locals 8

    .prologue
    .line 286
    const/4 v3, 0x0

    .line 288
    .local v3, "return_val":Z
    :try_start_0
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 289
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 290
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getServiceState()I

    move-result v4

    .line 291
    .local v4, "serviceState":I
    const-string/jumbo v5, "SemEmergencySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "serviceState : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    if-nez v4, :cond_0

    .line 293
    const/4 v3, 0x1

    .line 301
    .end local v4    # "serviceState":I
    :cond_0
    return v3

    .line 298
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 301
    return v3

    .line 296
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "SemEmergencySettings"

    const-string/jumbo v6, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v5, v6}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    return v3

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 301
    return v3
.end method

.method private static makeEmergencyNumber(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "isReady"    # Z

    .prologue
    .line 267
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string/jumbo v0, "SemEmergencySettings"

    const-string/jumbo v1, "This is Emergency number"

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return-object p0

    .line 272
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencySettings;->isPossibleNormalCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-string/jumbo v0, "SemEmergencySettings"

    const-string/jumbo v1, "SIM Ready, not emergency number."

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    return-object p0

    .line 276
    :cond_1
    const-string/jumbo v0, "SemEmergencySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SIM Ready = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", default emergency number."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public static put(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pref"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 57
    if-nez p0, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pref=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "selection":Ljava/lang/String;
    sget-object v3, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v3, v1, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 63
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "pref"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v3, "value"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v3, Lcom/samsung/android/emergencymode/SemEmergencyConstants;->URI_PREFSETTINGS:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 56
    .local v0, "resultUri":Landroid/net/Uri;
    return-void
.end method
