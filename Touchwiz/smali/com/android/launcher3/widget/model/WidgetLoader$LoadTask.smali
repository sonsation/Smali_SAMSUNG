.class Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;
.super Ljava/lang/Thread;
.source "WidgetLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/model/WidgetLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadTask"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private volatile mDirty:Z

.field private syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

.field final synthetic this$0:Lcom/android/launcher3/widget/model/WidgetLoader;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 133
    iput-object p1, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 134
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    .line 135
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    .line 136
    new-instance v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;-><init>(Lcom/android/launcher3/widget/model/WidgetLoader$1;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/model/WidgetLoader;Lcom/android/launcher3/widget/model/WidgetLoader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/widget/model/WidgetLoader;
    .param p2, "x1"    # Lcom/android/launcher3/widget/model/WidgetLoader$1;

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;-><init>(Lcom/android/launcher3/widget/model/WidgetLoader;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->notifyDirty()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->terminate()V

    return-void
.end method

.method private declared-synchronized notifyDirty()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized terminate()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    const/4 v0, 0x0

    .line 142
    .local v0, "updateComplete":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    if-eqz v2, :cond_2

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mActive:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 145
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    .line 146
    const-string v2, "WidgetLoader"

    const-string v3, "enter wait"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {p0}, Lcom/android/launcher3/widget/model/WidgetLoader;->access$400(Ljava/lang/Object;)V

    .line 148
    monitor-exit p0

    goto :goto_0

    .line 150
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const-string v2, "WidgetLoader"

    const-string v3, "start loading"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput-boolean v4, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->mDirty:Z

    .line 153
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->reset()V

    .line 154
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    invoke-static {v2, v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->access$500(Lcom/android/launcher3/widget/model/WidgetLoader;Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;)Ljava/util/List;

    move-result-object v1

    .line 155
    .local v1, "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    iget-boolean v2, v2, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->stopped:Z

    if-nez v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->this$0:Lcom/android/launcher3/widget/model/WidgetLoader;

    iget-object v3, p0, Lcom/android/launcher3/widget/model/WidgetLoader$LoadTask;->syncContext:Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;

    iget-boolean v3, v3, Lcom/android/launcher3/widget/model/WidgetLoader$SyncContext;->hasUninstallApp:Z

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/widget/model/WidgetLoader;->access$600(Lcom/android/launcher3/widget/model/WidgetLoader;Ljava/util/List;Z)V

    .line 157
    :cond_1
    const/4 v0, 0x1

    .line 158
    goto :goto_0

    .line 159
    .end local v1    # "widgets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method
