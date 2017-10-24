.class public Lcom/android/systemui/statusbar/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mImsManager:Lcom/sec/ims/ImsManager;

.field static final mPhoneCount:I

.field private static mThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0()Lcom/sec/ims/ImsManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    sput-object p0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    .line 65
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActiveSimCount(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "count":I
    const-string/jumbo v1, "NOT_READY"

    .line 354
    .local v1, "simState":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    sget v3, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    .line 355
    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    add-int/lit8 v0, v0, 0x1

    .line 354
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_1
    return v0
.end method

.method public static getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 214
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0

    .line 215
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 216
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DeviceState"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    .line 218
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 219
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/DeviceState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    .line 221
    :cond_2
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/DeviceState$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/DeviceState$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    sget-object v0, Lcom/android/systemui/statusbar/DeviceState;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method public static getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "property"    # Ljava/lang/String;
    .param p1, "slot"    # I
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 134
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 136
    aget-object v1, v2, p1

    .line 139
    .end local v1    # "propVal":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static getNetworkCurrentLocation(I)Ljava/lang/String;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 203
    const-string/jumbo v0, "ril.currentplmn"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkOperatorNumeric(I)Ljava/lang/String;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 207
    const-string/jumbo v0, "gsm.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumberOfSim(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 342
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    return v1

    .line 344
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static getOperatorNumeric(I)Ljava/lang/String;
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 127
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {v0, p0, v1}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReadySimCount()I
    .locals 5

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, "count":I
    const-string/jumbo v1, "NOT_READY"

    .line 117
    .local v1, "simState":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    sget v3, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v2, v3, :cond_1

    .line 118
    const-string/jumbo v3, "gsm.sim.state"

    const-string/jumbo v4, "NOT_READY"

    invoke-static {v3, v2, v4}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string/jumbo v3, "READY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    add-int/lit8 v0, v0, 0x1

    .line 117
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_1
    return v0
.end method

.method public static getSettingsBadgeCount(Landroid/content/Context;)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 486
    const-string/jumbo v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 487
    .local v1, "BADGE_URI":Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "package"

    aput-object v0, v2, v3

    const-string/jumbo v0, "class"

    aput-object v0, v2, v4

    const-string/jumbo v0, "badgecount"

    aput-object v0, v2, v5

    .line 488
    .local v2, "BADGE_COLUMNS":[Ljava/lang/String;
    const-string/jumbo v6, "package=? AND class=?"

    .line 489
    .local v6, "BADGE_PROVIDER_SELECTION":Ljava/lang/String;
    const-string/jumbo v8, "com.android.settings"

    .line 490
    .local v8, "PKG_NAME":Ljava/lang/String;
    const-string/jumbo v7, "com.android.settings.Settings"

    .line 492
    .local v7, "CLASS_NAME":Ljava/lang/String;
    const/4 v10, 0x0

    .line 493
    .local v10, "c":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 495
    .local v9, "badgeCount":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 496
    const-string/jumbo v3, "package=? AND class=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "com.android.settings"

    const/4 v12, 0x0

    aput-object v5, v4, v12

    const-string/jumbo v5, "com.android.settings.Settings"

    const/4 v12, 0x1

    aput-object v5, v4, v12

    const/4 v5, 0x0

    .line 495
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 498
    .local v10, "c":Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    const-string/jumbo v0, "badgecount"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 504
    :cond_0
    if-eqz v10, :cond_1

    .line 505
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 508
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string/jumbo v0, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsBadgeCount badgeCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return v9

    .line 501
    :catch_0
    move-exception v11

    .line 502
    .local v11, "e":Landroid/database/CursorWindowAllocationException;
    :try_start_1
    const-string/jumbo v0, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CursorWindowAllocationException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    if-eqz v10, :cond_1

    .line 505
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 503
    .end local v11    # "e":Landroid/database/CursorWindowAllocationException;
    :catchall_0
    move-exception v0

    .line 504
    if-eqz v10, :cond_2

    .line 505
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 503
    :cond_2
    throw v0
.end method

.method public static getSimSettingState(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x1

    .line 321
    if-nez p1, :cond_0

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, "value":I
    :goto_0
    return v0

    .line 324
    .end local v0    # "value":I
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .restart local v0    # "value":I
    goto :goto_0
.end method

.method public static isDesktopMode(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public static isFotaUpdate(Landroid/content/Context;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const-string/jumbo v6, "FingerprintVersion"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "oldFingerprint":Ljava/lang/String;
    const-string/jumbo v6, "CSCVersion"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 182
    .local v3, "oldCSCVersion":Ljava/lang/String;
    const-string/jumbo v6, "SalesCode"

    const-string/jumbo v7, "unknown"

    invoke-static {p0, v6, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 184
    .local v5, "oldSalesCode":Ljava/lang/String;
    const-string/jumbo v6, "ro.build.fingerprint"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "newFingerprint":Ljava/lang/String;
    const-string/jumbo v6, "ril.official_cscver"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "newCSCVersion":Ljava/lang/String;
    const-string/jumbo v6, "ro.csc.sales_code"

    const-string/jumbo v7, "unknown"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "newSalesCode":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 197
    const/4 v6, 0x0

    return v6

    .line 190
    :cond_0
    const-string/jumbo v6, "DeviceState"

    const-string/jumbo v7, "isFotaUpdate!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string/jumbo v6, "FingerprintVersion"

    invoke-static {p0, v6, v1}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string/jumbo v6, "CSCVersion"

    invoke-static {p0, v6, v0}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v6, "SalesCode"

    invoke-static {p0, v6, v2}, Lcom/android/systemui/Prefs;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const/4 v6, 0x1

    return v6
.end method

.method public static isLightSensorAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    const-string/jumbo v5, "sensor"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 81
    .local v2, "sensorMgr":Landroid/hardware/SensorManager;
    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 82
    .local v1, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 84
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 85
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 86
    .local v3, "sensorType":I
    const/4 v5, 0x5

    if-ne v3, v5, :cond_0

    .line 87
    const/4 v5, 0x1

    return v5

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    .end local v3    # "sensorType":I
    :cond_1
    const/4 v5, 0x0

    return v5
.end method

.method public static isLocationMenuNeed(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "retVal":Z
    invoke-static {p0}, Lcom/sec/ims/settings/GlobalSettingsLoader;->loadGlobalSettings(Landroid/content/Context;)Lcom/sec/ims/settings/GlobalSettings;

    move-result-object v0

    .line 243
    .local v0, "globalSettings":Lcom/sec/ims/settings/GlobalSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/ims/settings/GlobalSettings;->getVowifiNeedLocationMenu()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 244
    .end local v1    # "retVal":Z
    :goto_0
    const-string/jumbo v2, "DeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLocationMenuNeed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return v1

    .line 243
    .restart local v1    # "retVal":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMobileKeyboardConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 447
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v2, :cond_1

    .line 448
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 450
    :cond_1
    return v1
.end method

.method public static isMultisim()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 110
    sget v1, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNoSimState()Z
    .locals 4

    .prologue
    .line 304
    const-string/jumbo v0, "NOT_READY"

    .line 306
    .local v0, "simState":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "sub":I
    :goto_0
    sget v2, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 307
    const-string/jumbo v2, "gsm.sim.state"

    const-string/jumbo v3, "NOT_READY"

    invoke-static {v2, v1, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string/jumbo v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    const/4 v2, 0x0

    return v2

    .line 306
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isOpenTheme(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "current_sec_active_themepackage"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isQuickConnectSupported(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 457
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 458
    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x0

    .line 457
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 459
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v2, 0x1

    return v2

    .line 460
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "DeviceState"

    const-string/jumbo v3, "NameNotFoundException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v5
.end method

.method public static isSimCardInserted(I)Z
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    const/4 v1, 0x0

    .line 331
    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {v2, p0, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "iccType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    :cond_0
    return v1

    .line 336
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static isSimReady()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 144
    .local v0, "SimState":I
    const-string/jumbo v2, "DeviceState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " isSimReady ? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->getReadySimCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 146
    return v4

    :cond_0
    move v1, v0

    .line 144
    goto :goto_0

    .line 148
    :cond_1
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    if-nez v1, :cond_2

    .line 149
    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    .line 150
    return v4

    .line 152
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public static isSupportSFinder(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.sec.feature.findo"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    .line 299
    const-string/jumbo v0, "ro.build.characteristics"

    const-string/jumbo v1, "phone"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isTelephonyIdle(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 156
    const-string/jumbo v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 157
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    const/4 v1, 0x1

    .line 160
    .local v1, "isIdle":Z
    if-eqz v2, :cond_0

    .line 161
    :try_start_0
    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 162
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_0

    .line 163
    const/4 v4, 0x1

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_0

    .line 164
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 165
    const/4 v3, 0x1

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v1

    .line 174
    .end local v1    # "isIdle":Z
    :cond_0
    :goto_0
    return v1

    .restart local v1    # "isIdle":Z
    :cond_1
    move v1, v3

    .line 164
    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, "isIdle":Z
    goto :goto_0

    .line 171
    .local v1, "isIdle":Z
    :catch_0
    move-exception v0

    .line 172
    .local v0, "exception":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    return v1

    .line 173
    .end local v0    # "exception":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 174
    return v1
.end method

.method public static isVibratorSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 480
    const-string/jumbo v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 481
    .local v0, "vib":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoLTESupportedSIM(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v2

    .line 251
    .local v2, "manager":Lcom/sec/ims/ImsManager;
    if-eqz v2, :cond_1

    .line 252
    const-string/jumbo v4, "mmtel"

    .line 253
    const/16 v5, 0xd

    .line 252
    invoke-virtual {v2, v4, v5}, Lcom/sec/ims/ImsManager;->isServiceAvailable(Ljava/lang/String;I)Z

    move-result v1

    .line 254
    .local v1, "isVoLteSupported":Z
    invoke-virtual {v2}, Lcom/sec/ims/ImsManager;->hasVoLteSim()Z

    move-result v0

    .line 255
    .local v0, "hasVoLteSim":Z
    const-string/jumbo v4, "DeviceState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isVoLTESupportedSIM hasVoLteSim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    if-eqz v1, :cond_0

    .end local v0    # "hasVoLteSim":Z
    :goto_0
    return v0

    .restart local v0    # "hasVoLteSim":Z
    :cond_0
    move v0, v3

    goto :goto_0

    .line 258
    .end local v0    # "hasVoLteSim":Z
    .end local v1    # "isVoLteSupported":Z
    :cond_1
    return v3
.end method

.method public static isVoWifiProvisioned(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 285
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "133"

    aput-object v3, v0, v4

    .line 286
    .local v0, "fields":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v1

    .line 287
    .local v1, "manager":Lcom/sec/ims/ImsManager;
    if-eqz v1, :cond_0

    .line 288
    invoke-virtual {v1, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 289
    .local v2, "value":Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 290
    const-string/jumbo v4, "1"

    const-string/jumbo v3, "133"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 294
    .end local v2    # "value":Landroid/content/ContentValues;
    :cond_0
    return v4
.end method

.method public static isVolteEnabled(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 265
    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v5, "93"

    aput-object v5, v0, v7

    .line 266
    .local v0, "fields":[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/systemui/statusbar/DeviceState;->getImsManager(Landroid/content/Context;)Lcom/sec/ims/ImsManager;

    move-result-object v2

    .line 267
    .local v2, "manager":Lcom/sec/ims/ImsManager;
    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    .line 269
    .local v3, "value":Landroid/content/ContentValues;
    if-eqz v3, :cond_0

    .line 270
    const-string/jumbo v6, "1"

    const-string/jumbo v5, "93"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 271
    .local v1, "isDmVolteEnabled":Z
    const-string/jumbo v5, "volte"

    invoke-virtual {v2, v5}, Lcom/sec/ims/ImsManager;->getRegistrationInfoByServiceType(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 272
    .local v4, "volteRegi":Lcom/sec/ims/ImsRegistration;
    if-eqz v4, :cond_0

    .line 273
    if-eqz v1, :cond_0

    const-string/jumbo v5, "mmtel"

    invoke-virtual {v4, v5}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    return v8

    .line 279
    .end local v1    # "isDmVolteEnabled":Z
    .end local v3    # "value":Landroid/content/ContentValues;
    .end local v4    # "volteRegi":Lcom/sec/ims/ImsRegistration;
    :cond_0
    return v7
.end method
