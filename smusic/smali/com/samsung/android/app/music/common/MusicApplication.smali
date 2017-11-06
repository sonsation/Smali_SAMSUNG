.class public Lcom/samsung/android/app/music/common/MusicApplication;
.super Landroid/app/Application;
.source "MusicApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/MusicApplication$ActivityLifeCycleCallbacksAdapter;
    }
.end annotation


# static fields
.field private static final LEAK_CANARY_ENABLED:Z

.field private static final STRICT_MODE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getProcessNameFast()Ljava/lang/String;
    .locals 9

    .prologue
    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 219
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v7, "iso-8859-1"

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v2, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v4, "processName":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v0

    .local v0, "c":I
    if-lez v0, :cond_2

    .line 224
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 227
    .end local v0    # "c":I
    .end local v4    # "processName":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 228
    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    .line 236
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 242
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    const/4 v5, 0x0

    :cond_1
    :goto_3
    return-object v5

    .line 226
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v0    # "c":I
    .restart local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v4    # "processName":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 234
    if-eqz v2, :cond_1

    .line 236
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 237
    :catch_1
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 237
    .end local v0    # "c":I
    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v4    # "processName":Ljava/lang/StringBuilder;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 229
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 230
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    .line 236
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 237
    :catch_4
    move-exception v3

    .line 238
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 231
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 232
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 234
    if-eqz v1, :cond_0

    .line 236
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_2

    .line 237
    :catch_6
    move-exception v3

    .line 238
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 234
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_6
    if-eqz v1, :cond_3

    .line 236
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 239
    :cond_3
    :goto_7
    throw v5

    .line 237
    :catch_7
    move-exception v3

    .line 238
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 234
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 231
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 229
    .end local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    :catch_9
    move-exception v3

    move-object v1, v2

    .end local v2    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v1    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 227
    :catch_a
    move-exception v3

    goto :goto_1
.end method

.method private handleUiProcessByFeature()V
    .locals 1

    .prologue
    .line 198
    sget-boolean v0, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Lcom/samsung/android/app/music/common/MusicApplication$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/MusicApplication$1;-><init>(Lcom/samsung/android/app/music/common/MusicApplication;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/MusicApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 209
    :cond_0
    return-void
.end method

.method private isDiskCacheEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "process"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "com.sec.android.app.music:dataService"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private registerLocaleChangedReceiver()V
    .locals 2

    .prologue
    .line 193
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "f":Landroid/content/IntentFilter;
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/util/LocaleChangedBroadcastReceiver;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/ui/util/LocaleChangedBroadcastReceiver;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/MusicApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 195
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 181
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    invoke-static {p0}, Landroid/support/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 88
    const/4 v1, 0x0

    .line 96
    .local v1, "inAnalyzerProcess":Z
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 97
    if-eqz v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/common/MusicApplication;->getProcessNameFast()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "process":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/MusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    const-string v3, "com.sec.android.app.music.setting"

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    .line 110
    const-string v3, "com.sec.android.app.music"

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->setAppId(Ljava/lang/String;)V

    .line 111
    const-string v3, "16.2.6-11"

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->setAppVersion(Ljava/lang/String;)V

    .line 112
    const-class v3, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->createInstance(Landroid/content/Context;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    .line 113
    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 114
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_BIXBY:Z

    if-eqz v3, :cond_2

    .line 118
    const-string v3, "Music"

    new-instance v4, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/music/bixby/executor/InitialExecutor;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/music/bixby/converter/StateConvertibleImpl;-><init>()V

    invoke-static {v0, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;)V

    .line 120
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenControlExecutor;

    invoke-direct {v5}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenControlExecutor;-><init>()V

    aput-object v5, v4, v7

    const/4 v5, 0x1

    new-instance v6, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;

    invoke-direct {v6, v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenGetMetaExecutor;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v5

    new-instance v5, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;

    invoke-direct {v5, v0}, Lcom/samsung/android/app/music/bixby/executor/lockscreen/LockScreenPlayControllerExecutor;-><init>(Landroid/content/Context;)V

    aput-object v5, v4, v8

    .line 121
    invoke-virtual {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->addLockScreenCommandExecutor([Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V

    .line 131
    :cond_2
    invoke-static {p0}, Lcom/samsung/android/app/music/common/lyrics/LyricsCache;->init(Landroid/app/Application;)V

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/MusicApplication;->registerLocaleChangedReceiver()V

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/MusicApplication;->handleUiProcessByFeature()V

    .line 139
    :cond_3
    const-string v3, "com.sec.android.app.music:playerService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 140
    const-class v3, Lcom/samsung/android/app/music/provider/sync/MusicSyncReceiver;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setComponentEnabledIfNotEnabled(Landroid/content/Context;Ljava/lang/Class;)V

    .line 141
    invoke-static {v0, v8}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->sync(Landroid/content/Context;I)V

    .line 145
    const-class v3, Lcom/sec/android/app/music/appwidget/MusicAppWidgetProvider;

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/PackageUtil;->setComponentEnabledIfNotEnabled(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    :cond_4
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/common/MusicApplication;->isDiskCacheEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-static {p0, v3}, Lcom/samsung/android/app/music/common/martworkcache/MArtworkUtils;->initCache(Landroid/app/Application;Z)V

    .line 157
    const-string v3, "com.sec.android.app.music"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 158
    invoke-static {v0}, Lcom/samsung/android/app/music/common/settings/VersionManager;->check(Landroid/content/Context;)V

    .line 161
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/common/MusicApplication;->setTheme(I)V

    .line 162
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->VI_TRANSITION_PLAYER_ENABLED:Z

    if-eqz v3, :cond_6

    .line 163
    invoke-static {v7}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setTransitioning(Z)V

    .line 166
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/MusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/common/util/AndroidUtils;->initAppVersionName(Landroid/content/Context;)V

    .line 168
    invoke-static {p0}, Lcom/samsung/android/app/music/common/gcm/GcmController;->initGcm(Landroid/content/Context;)V

    .line 169
    sget-boolean v3, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v3, :cond_0

    .line 170
    const-string v3, "16.2.6-11"

    invoke-static {v3}, Lcom/samsung/android/app/music/milk/util/MLog;->setAppVersion(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/music/common/MusicApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    goto/16 :goto_0
.end method
