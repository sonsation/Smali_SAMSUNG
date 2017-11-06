.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
.super Ljava/lang/Object;
.source "BixbyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$CommandExecutorType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;


# instance fields
.field private final mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private final mCommandExecutors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

.field private mCurrentScreenState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mInitialCommandExecutor:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLockScreenCommandExecutors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStateConvertible:Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "appName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "initialCommandExecutor"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "convertible"    # Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    .line 96
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mInitialCommandExecutor:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 97
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mStateConvertible:Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyStartStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setStartStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearInterimStateListener()V

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$BixbyInterimStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setInterimStateListener(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    .line 102
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mStateConvertible:Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mInitialCommandExecutor:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCurrentScreenState:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "appName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "initialCommandExecutor"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "convertible"    # Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    const-class v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance() - appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/StateConvertible;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sInstance:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    .locals 2

    .prologue
    .line 88
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->sInstance:Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public varargs addCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "key"    # Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "addedExecutors"    # [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 113
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 114
    .local v1, "maps":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "maps":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    .restart local v1    # "maps":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 119
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 120
    .local v0, "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    if-nez v0, :cond_1

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .restart local v0    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_1
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 126
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCommandExecutor() - type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", executors: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public varargs addLockScreenCommandExecutor([Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V
    .locals 3
    .param p1, "executors"    # [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLockScreenCommandExecutor() - executors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public clearNextCommand()V
    .locals 3

    .prologue
    .line 208
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNextCommand() - mNextCommand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 209
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 211
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 209
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public executeCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 11
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 220
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "executeCommand() - command: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    const/4 v9, 0x2

    .line 224
    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 225
    .local v1, "dialogs":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    if-eqz v1, :cond_2

    .line 226
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 227
    .local v5, "managerImpl":Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 230
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 231
    .local v3, "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 232
    .local v2, "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 275
    .end local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    .end local v3    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    .end local v5    # "managerImpl":Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
    :goto_0
    return v6

    .line 238
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    .line 239
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 240
    .local v4, "fragments":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    if-eqz v4, :cond_5

    .line 241
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 242
    .restart local v5    # "managerImpl":Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 245
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 246
    .restart local v3    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 247
    .restart local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_0

    .line 253
    .end local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    .end local v3    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    .end local v5    # "managerImpl":Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
    :cond_5
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    .line 254
    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 255
    .local v0, "activities":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    if-eqz v0, :cond_8

    .line 256
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 257
    .restart local v5    # "managerImpl":Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 260
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 261
    .restart local v3    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 262
    .restart local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto/16 :goto_0

    .line 268
    .end local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    .end local v3    # "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    .end local v5    # "managerImpl":Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    if-eqz v8, :cond_a

    .line 269
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;

    .line 270
    .restart local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto/16 :goto_0

    .end local v2    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    :cond_a
    move v6, v7

    .line 275
    goto/16 :goto_0
.end method

.method public getNextCommand()Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 199
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextCommand() - mNextCommand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 200
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    return-object v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 200
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public varargs removeCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "key"    # Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "removedExecutors"    # [Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 141
    .local v2, "maps":Ljava/util/Map;, "Ljava/util/Map<Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;>;"
    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 146
    .local v1, "executors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;>;"
    if-eqz v1, :cond_0

    .line 150
    array-length v4, p3

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v0, p3, v3

    .line 151
    .local v0, "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 153
    .end local v0    # "executor":Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;
    :cond_2
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCommandExecutor() - type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", executors: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-static {v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;)V
    .locals 7
    .param p1, "requestNlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cancelNlg"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "listener"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 287
    sget-object v4, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requestUserConfirm() - requestNlg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cancelNlg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getState()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 290
    .local v2, "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getName()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getAttribute()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "attribute":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 294
    invoke-virtual {v2, v1, v0, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 296
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;

    invoke-direct {v6, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager$OnUserConfirmListener;Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-virtual {v4, v2, v5, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestConfirm(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    .line 310
    return-void
.end method

.method public sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V
    .locals 12
    .param p1, "result"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->isSuccess()Z

    move-result v6

    .line 319
    .local v6, "success":Z
    if-eqz v6, :cond_0

    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    invoke-virtual {v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->isLastState()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 320
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->getInstance()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v8

    const-string v9, "499"

    const-string v10, "0027"

    iget-object v11, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 322
    invoke-virtual {v11}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getRuleId()Ljava/lang/String;

    move-result-object v11

    .line 321
    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->sendScreenEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->getNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    move-result-object v2

    .line 325
    .local v2, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    if-eqz v2, :cond_4

    .line 326
    new-instance v3, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getState()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getName()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getAttribute()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "attribute":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 332
    .local v7, "value":Ljava/lang/String;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    .line 333
    invoke-virtual {v3, v1, v0, v7}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 337
    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getResultName()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "resultName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->getResultValue()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, "resultValue":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 340
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->addResultParam(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 343
    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->isNeedUserAction()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 345
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v3, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 346
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendNlg() - Send MULTIPLE type NLG without result. - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 347
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 346
    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .end local v4    # "resultName":Ljava/lang/String;
    .end local v5    # "resultValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 350
    .restart local v0    # "attribute":Ljava/lang/String;
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v3    # "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .restart local v4    # "resultName":Ljava/lang/String;
    .restart local v5    # "resultValue":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v8, v3, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi;->requestNlg(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 352
    .end local v0    # "attribute":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v3    # "nlgInfo":Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;
    .end local v4    # "resultName":Ljava/lang/String;
    .end local v5    # "resultValue":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    sget-object v8, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sendResponse() - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v9, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v6, :cond_5

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :goto_1
    invoke-virtual {v9, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_5
    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_1
.end method

.method public setCurrentScreenState(Ljava/lang/String;)V
    .locals 3
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 179
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentScreenState() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mCurrentScreenState:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)V
    .locals 3
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNextCommand() - command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/Command;

    .line 192
    return-void
.end method
