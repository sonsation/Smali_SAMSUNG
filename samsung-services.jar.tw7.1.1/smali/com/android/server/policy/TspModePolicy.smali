.class public Lcom/android/server/policy/TspModePolicy;
.super Ljava/lang/Object;
.source "TspModePolicy.java"


# static fields
.field private static final DEBUG:Z

.field private static final SETTING_GRIP_ENABLED:Ljava/lang/String; = "setting_grip_enabled"

.field private static final SETTING_GRIP_THRESHOLD:Ljava/lang/String; = "setting_grip_threshold"

.field private static final SETTING_GRIP_THRESHOLD_DEFAULT:Ljava/lang/String; = "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&10,35,35,7"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_tunning_data,"

.field private static final TAG:Ljava/lang/String; = "TspModePolicy"

.field private static final TSP_STATE_VIEW_POLICY_LIST:I = 0x1

.field private static final TSP_STATE_VIEW_POLICY_NORMAL:I = 0x0

.field private static final TSP_STATE_WINDOW_POLICY_CUSTOM:I = 0x4

.field private static final TSP_STATE_WINDOW_POLICY_HOME:I = 0x1

.field private static final TSP_STATE_WINDOW_POLICY_INPUT_METHOD:I = 0x3

.field private static final TSP_STATE_WINDOW_POLICY_KEYGUARD:I = 0x2

.field private static final TSP_STATE_WINDOW_POLICY_MAX:I = 0x5

.field private static final TSP_STATE_WINDOW_POLICY_NORMAL:I


# instance fields
.field private final FEATURE_GRIP_ENABLED:Z

.field private final mThresholds:[Ljava/lang/String;

.field private mViewPolicy:I

.field private mWindowPolicy:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspModePolicy;->DEBUG:Z

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v3, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    .line 56
    iput v3, p0, Lcom/android/server/policy/TspModePolicy;->mViewPolicy:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setting_grip_enabled"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/policy/TspModePolicy;->FEATURE_GRIP_ENABLED:Z

    .line 60
    iget-boolean v2, p0, Lcom/android/server/policy/TspModePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v2, :cond_3

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "setting_grip_threshold"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "threshold":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040b0e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string v0, "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&10,35,35,7"

    .line 68
    :cond_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "thresholds":[Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 70
    iput-object v1, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    .line 58
    .end local v0    # "threshold":Ljava/lang/String;
    .end local v1    # "thresholds":[Ljava/lang/String;
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 59
    goto :goto_0

    .line 72
    .restart local v0    # "threshold":Ljava/lang/String;
    .restart local v1    # "thresholds":[Ljava/lang/String;
    :cond_2
    const-string v2, "TspModePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TspStateManager thresholds format was wrong. threshold ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v2, "10,35,35,7&10,60,35,7&10,70,35,7&10,15,35,7&10,35,35,7"

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    goto :goto_1

    .line 77
    .end local v0    # "threshold":Ljava/lang/String;
    .end local v1    # "thresholds":[Ljava/lang/String;
    :cond_3
    iput-object v6, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTspState()V
    .locals 10

    .prologue
    .line 127
    const/4 v6, 0x0

    .line 129
    .local v6, "tspCommand":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set_tunning_data,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    iget v9, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, "tspCommand":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/policy/TspModePolicy;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 131
    const-string v7, "TspModePolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateTspState mWindowPolicy="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",cmd="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const/4 v4, 0x0

    .line 136
    .local v4, "fos":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/sys/class/sec/tsp/cmd"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 138
    const-string v7, "TspModePolicy"

    const-string v8, "The file is not existed."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-nez v7, :cond_2

    .line 142
    const-string v7, "TspModePolicy"

    const-string v8, "The file cannot write."

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return-void

    .line 145
    :cond_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .local v5, "fos":Ljava/io/OutputStream;
    :try_start_1
    const-string v7, "UTF-8"

    .end local v4    # "fos":Ljava/io/OutputStream;
    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/OutputStream;->write([B)V

    .line 147
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    if-eqz v5, :cond_3

    .line 155
    :try_start_2
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v4, v5

    .line 126
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    :cond_4
    :goto_1
    return-void

    .line 157
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 151
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    if-eqz v4, :cond_4

    .line 155
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 157
    :catch_2
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 148
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    .line 149
    .end local v4    # "fos":Ljava/io/OutputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    if-eqz v4, :cond_4

    .line 155
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 157
    :catch_4
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 152
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 154
    :goto_4
    if-eqz v4, :cond_5

    .line 155
    :try_start_7
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 152
    :cond_5
    :goto_5
    throw v7

    .line 157
    :catch_5
    move-exception v2

    .line 158
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 152
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .local v4, "fos":Ljava/io/OutputStream;
    goto :goto_4

    .line 148
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_6
    move-exception v0

    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_3

    .line 150
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fos":Ljava/io/OutputStream;
    .restart local v5    # "fos":Ljava/io/OutputStream;
    :catch_7
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/OutputStream;
    .restart local v4    # "fos":Ljava/io/OutputStream;
    goto :goto_2
.end method


# virtual methods
.method public updateInputMethodPolicy()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 117
    iget-boolean v0, p0, Lcom/android/server/policy/TspModePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 120
    :cond_1
    iget v0, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    if-eq v0, v1, :cond_2

    .line 121
    iput v1, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    .line 122
    invoke-direct {p0}, Lcom/android/server/policy/TspModePolicy;->updateTspState()V

    .line 116
    :cond_2
    return-void
.end method

.method public updateViewPolicy(I)V
    .locals 3
    .param p1, "viewPolicy"    # I

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/android/server/policy/TspModePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 105
    :cond_0
    return-void

    .line 107
    :cond_1
    const-string v0, "TspModePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewPolicy viewPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget v0, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    if-nez v0, :cond_2

    .line 109
    iget v0, p0, Lcom/android/server/policy/TspModePolicy;->mViewPolicy:I

    if-eq p1, v0, :cond_2

    .line 110
    iput p1, p0, Lcom/android/server/policy/TspModePolicy;->mViewPolicy:I

    .line 111
    invoke-direct {p0}, Lcom/android/server/policy/TspModePolicy;->updateTspState()V

    .line 103
    :cond_2
    return-void
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 82
    iget-boolean v1, p0, Lcom/android/server/policy/TspModePolicy;->FEATURE_GRIP_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/TspModePolicy;->mThresholds:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 83
    :cond_0
    return-void

    .line 85
    :cond_1
    if-nez p1, :cond_3

    .line 86
    sget-boolean v1, Lcom/android/server/policy/TspModePolicy;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "TspModePolicy"

    const-string v2, "updateFocusedWindow : focusedWindow is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    return-void

    .line 90
    :cond_3
    const/4 v0, 0x0

    .line 91
    .local v0, "tspStatePolicy":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_6

    .line 92
    const/4 v0, 0x2

    .line 97
    :cond_4
    :goto_0
    iget v1, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    if-eq v0, v1, :cond_5

    .line 98
    iput v0, p0, Lcom/android/server/policy/TspModePolicy;->mWindowPolicy:I

    .line 99
    invoke-direct {p0}, Lcom/android/server/policy/TspModePolicy;->updateTspState()V

    .line 81
    :cond_5
    return-void

    .line 93
    :cond_6
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method
