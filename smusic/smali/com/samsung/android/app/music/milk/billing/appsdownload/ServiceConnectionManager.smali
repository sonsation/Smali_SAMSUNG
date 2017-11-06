.class public abstract Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
.super Ljava/lang/Object;
.source "ServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;,
        Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;
    }
.end annotation


# instance fields
.field _State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

.field mBinderResultListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private mServicePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "servicePath"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mBinderResultListener:Ljava/util/List;

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$1;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 33
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mServicePath:Ljava/lang/String;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->onServiceBinded(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->onUnbinded()V

    return-void
.end method

.method private entry()V
    .locals 3

    .prologue
    .line 44
    const-string v0, "ServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceBinder entry:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->$SwitchMap$com$samsung$android$app$music$milk$billing$appsdownload$ServiceConnectionManager$State:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    :pswitch_0
    return-void

    .line 47
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->notifyFailed()V

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 53
    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->onBindService()V

    goto :goto_0

    .line 56
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->notifyPrepared()V

    goto :goto_0

    .line 59
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->onUnbindService()V

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private exit()V
    .locals 3

    .prologue
    .line 154
    const-string v0, "ServiceConnectionManager ServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->$SwitchMap$com$samsung$android$app$music$milk$billing$appsdownload$ServiceConnectionManager$State:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 165
    :pswitch_0
    return-void

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private notifyFailed()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mBinderResultListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;

    .line 73
    .local v0, "listener":Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;->onServiceBindFailed()V

    goto :goto_0

    .line 75
    .end local v0    # "listener":Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mBinderResultListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 76
    return-void
.end method

.method private notifyPrepared()V
    .locals 3

    .prologue
    .line 65
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mBinderResultListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;

    .line 66
    .local v0, "listener":Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;
    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;->onServiceBinded()V

    goto :goto_0

    .line 68
    .end local v0    # "listener":Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mBinderResultListener:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 69
    return-void
.end method

.method private onBindService()V
    .locals 6

    .prologue
    .line 129
    const/4 v2, 0x0

    .line 131
    .local v2, "retval":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mServicePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "com.sec.android.app.samsungapps"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    .line 134
    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 140
    if-nez v2, :cond_0

    .line 141
    sget-object v3, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    .line 143
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 137
    sget-object v3, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0
.end method

.method private onServiceBinded(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 91
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->$SwitchMap$com$samsung$android$app$music$milk$billing$appsdownload$ServiceConnectionManager$State:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    :pswitch_0
    return-void

    .line 97
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->bindService(Landroid/os/IBinder;)V

    .line 98
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->PREPARED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onUnbindService()V
    .locals 3

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private onUnbinded()V
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->$SwitchMap$com$samsung$android$app$music$milk$billing$appsdownload$ServiceConnectionManager$State:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    :pswitch_0
    return-void

    .line 110
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 115
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->FAILED:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 118
    :pswitch_3
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 121
    :pswitch_4
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected abstract bindService(Landroid/os/IBinder;)V
.end method

.method public checkServiceConnection(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;)V
    .locals 3
    .param p1, "resultReceiver"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;

    .prologue
    .line 168
    const-string v0, "ServiceConnectionManager ServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->mBinderResultListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->$SwitchMap$com$samsung$android$app$music$milk$billing$appsdownload$ServiceConnectionManager$State:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    :pswitch_0
    return-void

    .line 172
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 175
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->INIT:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 180
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->notifyPrepared()V

    goto :goto_0

    .line 183
    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->notifyFailed()V

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public release()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 189
    const-string v1, "ServiceConnectionManager ServiceBinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "release:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$2;->$SwitchMap$com$samsung$android$app$music$milk$billing$appsdownload$ServiceConnectionManager$State:[I

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_0
    :pswitch_0
    return v0

    .line 192
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->IDLE:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 197
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 199
    :pswitch_3
    sget-object v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;->RELEASING:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method tran(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->exit()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->_State:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$State;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->entry()V

    .line 41
    return-void
.end method
