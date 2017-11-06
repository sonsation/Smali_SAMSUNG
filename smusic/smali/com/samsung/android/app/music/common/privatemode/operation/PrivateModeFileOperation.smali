.class public final Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
.super Ljava/lang/Object;
.source "PrivateModeFileOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;,
        Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$PrivateThreadAction;,
        Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OperationState;
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String;

.field private static sPrivateModeOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

.field private mOnOperationListener:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

.field private mOperationState:I

.field private mPrivateManager:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

.field private final mPrivateOffReceiver:Landroid/content/BroadcastReceiver;

.field private final mResultHandlerByThread:Landroid/os/Handler;

.field private final mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->THREAD_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$1;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    .line 183
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$2;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mResultHandlerByThread:Landroid/os/Handler;

    .line 353
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$3;-><init>(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateManager:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOnOperationListener:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->unregisterClient()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    sget-object v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->sPrivateModeOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->sPrivateModeOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    .line 98
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->sPrivateModeOperation:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;

    return-object v0
.end method

.method private registerPrivateOffReceiver()V
    .locals 3

    .prologue
    .line 334
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 335
    const-string v1, "PrivateMode"

    const-string v2, " registerPrivateOffReceiver()"

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 340
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private skipCurrentThread()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->doStopMove()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->interrupt()V

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .line 141
    :cond_0
    return-void
.end method

.method private unregisterClient()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateManager:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateManager:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;->unregisterClient(Landroid/os/IBinder;Z)Z

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateManager:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    .line 171
    :cond_0
    return-void
.end method

.method private unregisterPrivateOffReceiver()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 344
    const-string v0, "PrivateMode"

    const-string v1, " unregisterPrivateOffReceiver()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancelThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 144
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_1

    .line 147
    iput-object v3, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .line 162
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->unregisterPrivateOffReceiver()V

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->unregisterClient()V

    .line 164
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->doStopMove()V

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    if-ne v0, v1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->notifyAction(IZ)V

    .line 158
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOnOperationListener:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    iget v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    invoke-interface {v0, v1, v3}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;->onStateChanged(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getPrivateState()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    return v0
.end method

.method public renameNotifyCallback(IZ)V
    .locals 1
    .param p1, "action"    # I
    .param p2, "allApply"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->notifyAction(IZ)V

    .line 177
    :cond_0
    return-void
.end method

.method public setPrivateOperationListener(Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;)V
    .locals 0
    .param p1, "I"    # Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOnOperationListener:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation$OnPrivateOperationListener;

    .line 107
    return-void
.end method

.method public startMoveFilesThread([JLjava/lang/String;Z)V
    .locals 3
    .param p1, "list"    # [J
    .param p2, "destPath"    # Ljava/lang/String;
    .param p3, "isFolder"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->skipCurrentThread()V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->unregisterPrivateOffReceiver()V

    .line 112
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .line 113
    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v1, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p1, p3}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;-><init>(Landroid/content/Context;Ljava/lang/String;[JZ)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    sget-object v1, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->THREAD_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->setName(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mResultHandlerByThread:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->setResultHandler(Landroid/os/Handler;)V

    .line 120
    invoke-static {}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->isPrivateMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->registerPrivateOffReceiver()V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mMoveFilesThread:Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperationThread;->start()V

    .line 125
    const-string v0, "PrivateMode"

    const-string v1, " start thread "

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    goto :goto_0

    .line 128
    :cond_2
    const-string v0, "PrivateMode"

    const-string v1, " wait private manager callback. instead start thread "

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mStateChangedListener:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat$StateChangedListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mPrivateManager:Lcom/samsung/android/app/music/support/samsung/privatemode/PrivateModeManagerCompat;

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/music/common/privatemode/operation/PrivateModeFileOperation;->mOperationState:I

    goto :goto_0
.end method
