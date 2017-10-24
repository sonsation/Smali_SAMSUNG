.class public Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;
.super Lcom/samsung/accessory/manager/connectivity/Connectivity;
.source "NfcConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;,
        Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_NFC_SERVICE_STARTED:Ljava/lang/String; = "com.sec.android.nfc.AUTH_READY"

.field private static final ACTION_NFC_STATE_CHANGED:Ljava/lang/String;

.field private static final EXTRA_STATE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

.field private mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mNfcAdapter:Landroid/nfc/INfcAdapter;

.field private mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

.field private mPrevState:I

.field private mState:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->ACTION_NFC_STATE_CHANGED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->EXTRA_STATE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;)I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Z)Z
    .locals 1
    .param p1, "saveState"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->sendStateChanged(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "android.nfc.extra.ADAPTER_STATE"

    .line 30
    sput-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->EXTRA_STATE:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 34
    sput-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->ACTION_NFC_STATE_CHANGED:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object v3, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    .line 42
    iput v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    .line 44
    iput v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    .line 46
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 109
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()V

    .line 111
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcFeature()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 112
    new-instance v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$AdapterStateChangedHandler;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedHandler;

    .line 113
    new-instance v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-direct {v1, p0, v3}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;-><init>(Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sec.android.nfc.AUTH_READY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->ACTION_NFC_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private disableInternal()Z
    .locals 8

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    .line 215
    .local v0, "currentState":I
    iget v5, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    if-ne v5, v0, :cond_0

    const/4 v5, 0x0

    return v5

    .line 217
    :cond_0
    const/4 v2, 0x0

    .line 222
    .local v2, "ret":Z
    :try_start_0
    iget v5, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    sparse-switch v5, :sswitch_data_0

    .line 233
    sget-object v5, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disableInternal : can\'t disable currentState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v2, 0x0

    .line 253
    .end local v2    # "ret":Z
    :goto_0
    return v2

    .line 224
    .restart local v2    # "ret":Z
    :sswitch_0
    iget-object v5, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/nfc/INfcAdapter;->disable(Z)Z

    move-result v2

    .local v2, "ret":Z
    goto :goto_0

    .line 228
    .local v2, "ret":Z
    :sswitch_1
    iget-object v5, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v3

    .line 229
    .local v3, "ret1":Z
    iget-object v5, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v5}, Landroid/nfc/INfcAdapter;->readerDisable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 230
    .local v4, "ret2":Z
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 249
    .end local v3    # "ret1":Z
    .end local v4    # "ret2":Z
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "disableInternal :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private enableInternal(Z)Z
    .locals 6
    .param p1, "saveState"    # Z

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    .line 167
    .local v0, "currentState":I
    const/4 v2, 0x1

    .line 171
    .local v2, "ret":Z
    sparse-switch v0, :sswitch_data_0

    .line 179
    :try_start_0
    sget-object v3, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableInternal : can\'t enable currentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const/4 v2, 0x0

    .line 199
    .end local v2    # "ret":Z
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 200
    iput v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    .line 202
    :cond_0
    return v2

    .line 173
    .restart local v2    # "ret":Z
    :sswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->enable()Z

    move-result v2

    .local v2, "ret":Z
    goto :goto_0

    .line 176
    .local v2, "ret":Z
    :sswitch_1
    iget-object v3, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->readerEnable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .local v2, "ret":Z
    goto :goto_0

    .line 195
    .local v2, "ret":Z
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "enableInternal :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private declared-synchronized getNfcAdapter()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 123
    :try_start_0
    const-string/jumbo v0, "nfc"

    .line 122
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 121
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getNfcState()I
    .locals 7

    .prologue
    .line 306
    const/4 v3, -0x1

    .line 307
    .local v3, "retVal":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 310
    :try_start_0
    iget-object v4, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v4}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNfcState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 321
    :goto_1
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcAdapter()V

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :catch_1
    move-exception v1

    .line 319
    .local v1, "ee":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 324
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "ee":Ljava/lang/InterruptedException;
    :cond_0
    return v3
.end method

.method private sendStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, p1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onStateChanged(I)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 298
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iput-object v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcStateReceiver:Lcom/samsung/accessory/manager/connectivity/NfcConnectivity$NfcStateReceiver;

    .line 297
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 257
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;

    invoke-interface {v0, v1}, Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;->onConnectionStateChanged(I)V

    .line 260
    :cond_0
    return v1
.end method

.method public disable()Z
    .locals 2

    .prologue
    .line 206
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->disableInternal()Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 265
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 329
    const-string/jumbo v0, " Current NfcConnectivity state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPrevState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mPrevState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method public enable()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 142
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0, v2}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->enableInternal(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnableRequest:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 146
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mEnabledInternal:Z

    .line 147
    return v2

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/cover/RestrictionPolicyOberver;->getNfcFeature()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 154
    return v2

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->getNfcState()I

    move-result v0

    .line 158
    .local v0, "state":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 159
    :cond_1
    return v2

    .line 161
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public sendStartAuth(Lcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 2
    .param p1, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 271
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->startCoverAuth()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 275
    const/4 v1, 0x0

    return-object v1
.end method

.method public sendStopAuth()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v1}, Landroid/nfc/INfcAdapter;->stopCoverAuth()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 281
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 284
    const/4 v1, 0x0

    return v1
.end method

.method public sendSync([B)[B
    .locals 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSync, payload = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-object p1
.end method

.method public sendSynchronously([BLcom/samsung/accessory/manager/authentication/AuthenticationResult;)[B
    .locals 2
    .param p1, "payload"    # [B
    .param p2, "result"    # Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->setApiState(I)V

    .line 290
    iget-object v1, p0, Lcom/samsung/accessory/manager/connectivity/NfcConnectivity;->mNfcAdapter:Landroid/nfc/INfcAdapter;

    invoke-interface {v1, p1}, Landroid/nfc/INfcAdapter;->transceiveAuthData([B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 294
    const/4 v1, 0x0

    return-object v1
.end method
