.class public Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;
.super Ljava/lang/Object;
.source "CallStateChecker.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-class v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCallIdle(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 57
    sget-boolean v6, Lcom/samsung/android/app/musiclibrary/ui/feature/CscFeatures;->REGIONAL_KOR_LGT_UWA_CALL_ENABLED:Z

    if-eqz v6, :cond_1

    .line 58
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isRmsConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isUseSeeingCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v4

    .line 65
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isVoipIdle()Z

    move-result v3

    .line 66
    .local v3, "isVoipIdle":Z
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCommunicationIdle(Landroid/content/Context;)Z

    move-result v1

    .line 68
    .local v1, "isCommIdle":Z
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    move v2, v4

    .line 69
    .local v2, "isIdle":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 70
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->isCallStateIdle(Landroid/content/Context;)Z

    move-result v0

    .line 71
    .local v0, "isCallStateIdle":Z
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCallIdle() isVoipIdle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isCommIdle(Such like google talk..) : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isCallStateIdle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    move v2, v4

    .end local v0    # "isCallStateIdle":Z
    :goto_2
    move v4, v2

    .line 79
    goto :goto_0

    .end local v2    # "isIdle":Z
    :cond_2
    move v2, v5

    .line 68
    goto :goto_1

    .restart local v0    # "isCallStateIdle":Z
    .restart local v2    # "isIdle":Z
    :cond_3
    move v2, v5

    .line 74
    goto :goto_2

    .line 76
    .end local v0    # "isCallStateIdle":Z
    :cond_4
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCallIdle() isVoipIdle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isCommIdle(Such like google talk..) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static isCallStateIdle(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 107
    const-string v3, "phone"

    .line 108
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 109
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 112
    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 113
    .local v0, "callState":I
    sget-object v3, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDuringCall() call state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isCommunicationIdle(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 93
    .local v0, "am":Landroid/media/AudioManager;
    const/4 v1, 0x0

    .line 94
    .local v1, "mode":I
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 97
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isRmsConnected(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 124
    const/4 v8, 0x0

    .line 125
    .local v8, "status":I
    const/4 v6, 0x0

    .line 127
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://com.lguplus.rms/service"

    .line 128
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "connected"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 136
    :cond_0
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 140
    :cond_1
    :goto_0
    if-ne v8, v9, :cond_3

    move v0, v9

    :goto_1
    return v0

    .line 133
    :catch_0
    move-exception v7

    .line 134
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "RMS"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    if-eqz v6, :cond_1

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 136
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 137
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 140
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isUseSeeingCall(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 149
    const/4 v6, 0x0

    .line 150
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 151
    .local v9, "value":Ljava/lang/String;
    const/4 v8, 0x0

    .line 154
    .local v8, "ret":Z
    :try_start_0
    const-string v0, "content://com.uplus.ipagent.SettingsProvider/system"

    .line 155
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "value"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "setting_pluscall_active"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    .line 154
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 159
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    :cond_0
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :cond_1
    if-eqz v6, :cond_2

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 172
    :cond_2
    :goto_0
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    const/4 v8, 0x1

    .line 175
    :cond_3
    return v8

    .line 164
    :catch_0
    move-exception v7

    .line 165
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "UWA CALL Exception"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    if-eqz v6, :cond_2

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 167
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 168
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private static isVoipIdle()Z
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/voip/IVoIPInterfaceCompat;->isVoIPIdle()Z

    move-result v0

    return v0
.end method
