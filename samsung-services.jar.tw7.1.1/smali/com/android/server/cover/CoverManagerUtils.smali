.class final Lcom/android/server/cover/CoverManagerUtils;
.super Ljava/lang/Object;
.source "CoverManagerUtils.java"


# static fields
.field private static BOOSTING_TIMEOUT:I = 0x0

.field static final COVER_TOUCH_REGION_X:Ljava/lang/String; = "get_x_num"

.field static final COVER_TOUCH_REGION_Y:Ljava/lang/String; = "get_y_num"

.field static final PATH_FILE_COVER_COLOR:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_color"

.field static final PATH_FILE_COVER_DETECT:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_detect"

.field static final PATH_FILE_COVER_LED_PWR_QCOM:Ljava/lang/String; = "/sys/class/sec/expander/expgpio"

.field static final PATH_FILE_COVER_LED_PWR_SLSI:Ljava/lang/String; = "/sys/class/sec/ledcover/cover_pwr"

.field static final PATH_FILE_COVER_LED_UART_QCOM:Ljava/lang/String; = "/dev/ttyHSL1"

.field static final PATH_FILE_COVER_LED_UART_SLSI:Ljava/lang/String; = "/dev/ttySAC2"

.field static final PATH_FILE_COVER_MODEL:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

.field static final PATH_FILE_COVER_SERIAL_NUMBER:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_sn"

.field static final PATH_FILE_COVER_TYPE:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_check_id"

.field static final PATH_FILE_COVER_VERIFY:Ljava/lang/String; = "/sys/devices/w1_bus_master1/w1_master_verify_mac"

.field static final PATH_FILE_COVER_VERIFY_FAKE:Ljava/lang/String; = "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

.field static final PATH_FILE_PARTIAL_DISP:Ljava/lang/String; = "/sys/class/lcd/panel/partial_disp"

.field private static final TAG:Ljava/lang/String;

.field private static sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

.field private static sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/cover/CoverManagerUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    .line 59
    sput-object v2, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 60
    sput-object v2, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 61
    sput-object v2, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 62
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    .line 39
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTouchChannelCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "count":I
    :try_start_0
    invoke-static {p0}, Lcom/android/server/cover/CoverManagerUtils;->readCmdResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 160
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method static getValueFromSysFS(Ljava/lang/String;I)I
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 65
    move v6, p1

    .line 66
    .local v6, "value":I
    invoke-static {p0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    const/4 v4, 0x0

    .line 69
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v7, 0xf

    :try_start_1
    new-array v0, v7, [C

    .line 71
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 72
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 73
    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v3, -0x1

    const/4 v9, 0x0

    invoke-direct {v7, v0, v9, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 80
    :cond_0
    if-eqz v5, :cond_1

    .line 82
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getValueFromSysFS() ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_2
    return v6

    .line 83
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 77
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 78
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_1
    move v6, p1

    .line 80
    if-eqz v4, :cond_1

    .line 82
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 83
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 75
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 76
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_2
    move v6, p1

    .line 80
    if-eqz v4, :cond_1

    .line 82
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 83
    :catch_4
    move-exception v1

    goto :goto_0

    .line 79
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_0
    move-exception v7

    .line 80
    .end local v4    # "reader":Ljava/io/FileReader;
    :goto_3
    if-eqz v4, :cond_3

    .line 82
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 79
    :cond_3
    :goto_4
    throw v7

    .line 83
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 79
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 75
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 77
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method static getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 94
    move-object v6, p1

    .line 95
    .local v6, "value":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 96
    const/4 v4, 0x0

    .line 98
    .local v4, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .end local v4    # "reader":Ljava/io/FileReader;
    .local v5, "reader":Ljava/io/FileReader;
    const/16 v7, 0xf

    :try_start_1
    new-array v0, v7, [C

    .line 100
    .local v0, "buf":[C
    invoke-virtual {v5, v0}, Ljava/io/FileReader;->read([C)I

    move-result v3

    .line 101
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 102
    new-instance v6, Ljava/lang/String;

    .end local v6    # "value":Ljava/lang/String;
    add-int/lit8 v7, v3, -0x1

    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v7}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 109
    .restart local v6    # "value":Ljava/lang/String;
    :cond_0
    if-eqz v5, :cond_1

    .line 111
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 118
    .end local v0    # "buf":[C
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_0
    sget-boolean v7, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getValueFromSysFS() ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    return-object v6

    .line 112
    .restart local v0    # "buf":[C
    .restart local v3    # "n":I
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 106
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "n":I
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 107
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v6    # "value":Ljava/lang/String;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_1
    move-object v6, p1

    .line 109
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 111
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 112
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_0

    .line 104
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 105
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v6    # "value":Ljava/lang/String;
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_2
    move-object v6, p1

    .line 109
    .restart local v6    # "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 112
    :catch_4
    move-exception v1

    goto :goto_0

    .line 108
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/FileReader;
    :catchall_0
    move-exception v7

    .line 109
    .end local v4    # "reader":Ljava/io/FileReader;
    .end local v6    # "value":Ljava/lang/String;
    :goto_3
    if-eqz v4, :cond_3

    .line 111
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 108
    :cond_3
    :goto_4
    throw v7

    .line 112
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 108
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .local v4, "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 104
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .line 106
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/FileReader;
    goto :goto_1
.end method

.method static isFileExists(Ljava/lang/String;)Z
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    return v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static needsCPUBoostCover(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 256
    packed-switch p0, :pswitch_data_0

    .line 263
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 261
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static performCPUBoostCover(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 267
    sget-boolean v4, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "performCPUBoostCover called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_1

    .line 271
    const-string v4, "COVER_BOOSTER"

    const/16 v5, 0xc

    invoke-static {p0, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 272
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_1

    .line 273
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v3

    .line 274
    .local v3, "supportedCPUFreqTable":[I
    if-eqz v3, :cond_1

    .line 275
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 279
    .end local v3    # "supportedCPUFreqTable":[I
    :cond_1
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_2

    .line 281
    :try_start_0
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget v5, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_2
    :goto_0
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_3

    .line 289
    const-string v4, "COVER_CORE_BOOSTER"

    .line 290
    const/16 v5, 0xe

    .line 289
    invoke-static {p0, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    .line 291
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_3

    .line 292
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v0

    .line 293
    .local v0, "coreNumTable":[I
    if-eqz v0, :cond_3

    array-length v4, v0

    if-lez v4, :cond_3

    .line 294
    aget v4, v0, v6

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 295
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 300
    .end local v0    # "coreNumTable":[I
    :cond_3
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_4

    .line 302
    :try_start_1
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverCoreNumLockHelper:Lcom/samsung/android/os/SemDvfsManager;

    sget v5, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 309
    :cond_4
    :goto_1
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v4, :cond_5

    .line 310
    const-string v4, "COVER_BUS_BOOSTER"

    const/16 v5, 0x13

    invoke-static {p0, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    sput-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 311
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_5

    .line 312
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v4}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v2

    .line 313
    .local v2, "supportedBUSFreqTable":[I
    if-eqz v2, :cond_5

    array-length v4, v2

    if-lez v4, :cond_5

    .line 314
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 319
    .end local v2    # "supportedBUSFreqTable":[I
    :cond_5
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v4, :cond_6

    .line 321
    :try_start_2
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->sCoverBusBooster:Lcom/samsung/android/os/SemDvfsManager;

    sget v5, Lcom/android/server/cover/CoverManagerUtils;->BOOSTING_TIMEOUT:I

    invoke-virtual {v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 266
    :cond_6
    :goto_2
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "sCoverCpuBooster.acquire is failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 304
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "sCoverCoreNumLockHelper.acquire is failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 322
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 323
    .restart local v1    # "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "sCoverBusBooster.acquire is failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method static readCmdResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 164
    sget-object v3, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "***readCmdResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v2, ""

    .line 166
    .local v2, "status":Ljava/lang/String;
    const-string v1, ""

    .line 167
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/cover/CoverManagerUtils;->writeCmd(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->readStatus()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->readResult()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v3, "OK"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "arr":[Ljava/lang/String;
    array-length v3, v0

    if-le v3, v6, :cond_0

    .line 174
    aget-object v1, v0, v6

    .line 185
    .end local v0    # "arr":[Ljava/lang/String;
    :goto_0
    return-object v1

    .line 176
    .restart local v0    # "arr":[Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    aget-object v1, v0, v3

    goto :goto_0

    .line 177
    .end local v0    # "arr":[Ljava/lang/String;
    :cond_1
    const-string v3, "WAITING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    const-string v1, "waiting"

    goto :goto_0

    .line 179
    :cond_2
    const-string v3, "FAIL"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 180
    const-string v1, "fail"

    goto :goto_0

    .line 182
    :cond_3
    const-string v1, "NA"

    goto :goto_0
.end method

.method static readResult()Ljava/lang/String;
    .locals 7

    .prologue
    .line 231
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "***readResult ()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v3, 0x0

    .line 233
    .local v3, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 235
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/tsp/cmd_result"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "result":Ljava/lang/String;
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 243
    if-eqz v1, :cond_0

    .line 244
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .line 252
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "result":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v3

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 248
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "result":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 240
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 246
    :catch_2
    move-exception v2

    .line 248
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 241
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 243
    :goto_3
    if-eqz v0, :cond_2

    .line 244
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 241
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v4

    .line 246
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 248
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 241
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 238
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method static readStatus()Ljava/lang/String;
    .locals 7

    .prologue
    .line 209
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v5, "***readStatus ()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v3, 0x0

    .line 211
    .local v3, "status":Ljava/lang/String;
    const/4 v0, 0x0

    .line 213
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/class/sec/tsp/cmd_status"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "status":Ljava/lang/String;
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    if-eqz v1, :cond_0

    .line 221
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .line 227
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v3    # "status":Ljava/lang/String;
    .local v2, "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v3

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "status":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 216
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "status":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 217
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "status":Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 220
    if-eqz v0, :cond_1

    .line 221
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 223
    :catch_2
    move-exception v2

    .line 224
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 220
    :goto_3
    if-eqz v0, :cond_2

    .line 221
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 218
    .restart local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v4

    .line 223
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 224
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 216
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method static sendCoverInformationToAgent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "serial"    # Ljava/lang/String;
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v3, 0x0

    .line 353
    const/4 v1, 0x0

    .line 354
    .local v1, "serialNumber":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/cover/Feature;->isNfcAuthEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 355
    move-object v1, p1

    .line 359
    .local v1, "serialNumber":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.intent.action.COVER_ATTACHED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.soagent"

    const-string v3, "com.sec.android.soagent.AccRegisterReceiver"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "isBoot"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    const-string v2, "serialNumber"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 365
    const-string v3, "com.samsung.android.permission.COVER"

    .line 364
    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 366
    sget-object v2, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v3, "sendCoverInformationToAgent : broadcast !!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sget-boolean v2, Lcom/android/server/cover/CoverManagerDebugConfig;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    .line 369
    sget-object v2, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendCoverInformationToAgent : serialNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    return-void

    .line 357
    .local v1, "serialNumber":Ljava/lang/String;
    :cond_2
    const-string v2, "/sys/devices/w1_bus_master1/w1_master_check_sn"

    invoke-static {v2, v3}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "serialNumber":Ljava/lang/String;
    goto :goto_0
.end method

.method static declared-synchronized setPartialScreen(ZI)V
    .locals 9
    .param p0, "enabled"    # Z
    .param p1, "height"    # I

    .prologue
    const-class v6, Lcom/android/server/cover/CoverManagerUtils;

    monitor-enter v6

    .line 130
    :try_start_0
    const-string v4, "0 0"

    .line 131
    .local v4, "parameters":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0 "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 135
    :cond_0
    sget-object v5, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parameters="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    const/4 v2, 0x0

    .line 139
    .local v2, "out":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v7, "/sys/class/lcd/panel/partial_disp"

    invoke-direct {v5, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v3, "out":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 144
    if-eqz v3, :cond_1

    .line 146
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :goto_0
    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    :cond_2
    :goto_1
    monitor-exit v6

    .line 129
    return-void

    .line 147
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 141
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v0

    .line 142
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v5, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v7, "Failed to write partial_disp"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 144
    if-eqz v2, :cond_2

    .line 146
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 147
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 144
    :goto_3
    if-eqz v2, :cond_3

    .line 146
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 143
    :cond_3
    :goto_4
    :try_start_7
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local v4    # "parameters":Ljava/lang/String;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 147
    .restart local v4    # "parameters":Ljava/lang/String;
    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 143
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .local v2, "out":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 141
    .end local v2    # "out":Ljava/io/BufferedWriter;
    .restart local v3    # "out":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedWriter;
    .restart local v2    # "out":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method static showRuggedizedPopup(Landroid/content/Context;ZZ)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attached"    # Z
    .param p2, "isBoot"    # Z

    .prologue
    const/4 v2, 0x0

    .line 329
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.popupuireceiver"

    .line 331
    const-string v4, "com.sec.android.app.popupuireceiver.SviewCover"

    .line 330
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    invoke-static {p0}, Lcom/android/server/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/cover/Feature;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    const-string v3, "/sys/bus/w1/devices/w1_bus_master1/w1_master_cf"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 334
    .local v2, "verified":Z
    :cond_0
    if-nez v2, :cond_1

    .line 335
    const-string v3, "com.sec.android.app.popupuireceiver"

    .line 336
    const-string v4, "com.sec.android.app.popupuireceiver.SviewCoverFake"

    .line 335
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    :cond_1
    const-string v3, "verified"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    .end local v2    # "verified":Z
    :cond_2
    const-string v3, "isBoot"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    const-string v3, "attached"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 342
    const/high16 v3, 0x34000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    :try_start_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "exception":Landroid/content/ActivityNotFoundException;
    sget-object v3, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    const-string v4, "showRuggedizedPopup : ActivityNotFoundException !!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static writeCmd(Ljava/lang/String;)V
    .locals 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeCmd = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "bw":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/sec/tsp/cmd"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v1, "bw":Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 194
    sget-object v4, Lcom/android/server/cover/CoverManagerUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "write("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 199
    if-eqz v1, :cond_0

    .line 200
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v0, v1

    .line 188
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    :cond_1
    :goto_1
    return-void

    .line 202
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 195
    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v3

    .line 196
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    if-eqz v0, :cond_1

    .line 200
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 202
    :catch_2
    move-exception v2

    .line 203
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 199
    :goto_3
    if-eqz v0, :cond_2

    .line 200
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 197
    :cond_2
    :goto_4
    throw v4

    .line 202
    :catch_3
    move-exception v2

    .line 203
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 197
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .local v0, "bw":Ljava/io/BufferedWriter;
    goto :goto_3

    .line 195
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .restart local v1    # "bw":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedWriter;
    .restart local v0    # "bw":Ljava/io/BufferedWriter;
    goto :goto_2
.end method
