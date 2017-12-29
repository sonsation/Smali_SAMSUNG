.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
.super Ljava/lang/Object;
.source "EdgeLightingHistory.java"


# static fields
.field private static final DEBUG:Z

.field public static final IS_DEV_DEBUG:Z

.field private static final MAX_EDGE_LIGHTING_HISTORY:I = 0xa

.field private static final MAX_EVENT_HISTORY:I = 0x14

.field private static final MAX_HOST_HISTORY:I = 0x14

.field private static final MAX_LISTENER_HISTORY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "EdgeLightingHistory"

.field private static mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;


# instance fields
.field private mEdgeLightingHistory:[Ljava/lang/String;

.field private mEdgeLightingHistoryIdx:I

.field private mEventHistory:[Ljava/lang/String;

.field private mEventHistoryIdx:I

.field private mHostHistory:[Ljava/lang/String;

.field private mHostHistoryIdx:I

.field private mListenerHistory:[Ljava/lang/String;

.field private mListenerHistoryIdx:I

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    .line 48
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    sput-boolean v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    .line 12
    return-void

    .line 49
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x14

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    .line 29
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    .line 31
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    .line 33
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    .line 35
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    .line 37
    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    .line 39
    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    .line 41
    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    .line 43
    iput v1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    .line 12
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    .locals 2

    .prologue
    const-class v1, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;

    invoke-direct {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;-><init>()V

    sput-object v0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mInstance:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 134
    .local v0, "calendar":Ljava/util/Calendar;
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "[%02d-%02d %02d:%02d:%02d.%03d] %s"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    .line 135
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 136
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 137
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 138
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    .line 139
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x6

    aput-object p1, v3, v4

    .line 134
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 143
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 144
    :try_start_0
    const-string v2, "-EdgeLightingHistory"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v0, v2

    .line 146
    .local v0, "N":I
    const-string v2, "  [Host History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 147
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_1
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    array-length v0, v2

    .line 154
    const-string v2, "  [Listener History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 156
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    .line 157
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 160
    :cond_3
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_8

    .line 161
    :cond_4
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v0, v2

    .line 163
    const-string v2, "  [EL History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 165
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_5

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 169
    :cond_6
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    array-length v0, v2

    .line 170
    const-string v2, "  [Event History] :"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    .line 172
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_7

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    monitor-exit v3

    .line 142
    return-void

    .line 143
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateEdgeLightingHistory(Ljava/lang/String;)V
    .locals 6
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 93
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 96
    :cond_0
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 97
    const-string v2, "EdgeLightingHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEdgeLightingHistory log = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "history":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    array-length v1, v2

    .line 102
    .local v1, "historySize":I
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-ge v2, v1, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    aput-object v0, v2, v4

    .line 106
    :cond_2
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I

    if-lt v2, v1, :cond_3

    .line 107
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEdgeLightingHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 92
    return-void

    .line 94
    .end local v0    # "history":Ljava/lang/String;
    .end local v1    # "historySize":I
    :cond_4
    return-void

    .line 100
    .restart local v0    # "history":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateEventHistory(Ljava/lang/String;)V
    .locals 6
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 113
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 116
    :cond_0
    sget-boolean v2, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 117
    const-string v2, "EdgeLightingHistory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateEventHistory log = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "history":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    array-length v1, v2

    .line 122
    .local v1, "historySize":I
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-ge v2, v1, :cond_2

    .line 123
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    aput-object v0, v2, v4

    .line 126
    :cond_2
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I

    if-lt v2, v1, :cond_3

    .line 127
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mEventHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    .line 112
    return-void

    .line 114
    .end local v0    # "history":Ljava/lang/String;
    .end local v1    # "historySize":I
    :cond_4
    return-void

    .line 120
    .restart local v0    # "history":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    array-length v1, v2

    .line 64
    .local v1, "historySize":I
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-ge v2, v1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 68
    :cond_0
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I

    if-lt v2, v1, :cond_1

    .line 69
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mHostHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 56
    return-void

    .line 62
    .end local v1    # "historySize":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->toTimestampFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    iget-object v3, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 81
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    array-length v1, v2

    .line 82
    .local v1, "historySize":I
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-ge v2, v1, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistory:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 86
    :cond_0
    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I

    if-lt v2, v1, :cond_1

    .line 87
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingHistory;->mListenerHistoryIdx:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    .line 74
    return-void

    .line 80
    .end local v1    # "historySize":I
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
