.class public Lcom/samsung/android/app/executor/ExecutorService;
.super Landroid/app/Service;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/executor/ExecutorService$CommandHandlerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mBixbAgentSignature:Landroid/content/pm/Signature;


# instance fields
.field mBinder:Lcom/samsung/android/app/executor/IExecutorService$Stub;

.field private mBixbyAgentPackageName:Ljava/lang/String;

.field private mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

.field mResponseFromMediator:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

.field private mStateCommandJsonFromEm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/executor/ExecutorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_0025"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Landroid/content/pm/Signature;

    const-string/jumbo v1, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    const/4 v2, 0x0

    .line 32
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/app/executor/ExecutorService;->mBixbAgentSignature:Landroid/content/pm/Signature;

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "com.samsung.android.intelligence.executormanager"

    .line 30
    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mBixbyAgentPackageName:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/executor/ExecutorService$1;-><init>(Lcom/samsung/android/app/executor/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mResponseFromMediator:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    .line 199
    new-instance v0, Lcom/samsung/android/app/executor/ExecutorService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/executor/ExecutorService$2;-><init>(Lcom/samsung/android/app/executor/ExecutorService;)V

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mBinder:Lcom/samsung/android/app/executor/IExecutorService$Stub;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/app/executor/ExecutorService;Lcom/samsung/android/app/executor/IExecutorServiceCallback;)Lcom/samsung/android/app/executor/IExecutorServiceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .param p1, "x1"    # Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService;->mCallbackToEm:Lcom/samsung/android/app/executor/IExecutorServiceCallback;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/executor/ExecutorService;->handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/executor/ExecutorService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/samsung/android/app/executor/ExecutorService;->checkSenderIdentity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/executor/ExecutorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/executor/ExecutorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/executor/ExecutorService;->mStateCommandJsonFromEm:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/app/executor/ExecutorService;)Lcom/samsung/android/app/executor/ExecutorMediator;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/executor/ExecutorService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    return-object v0
.end method

.method private checkSenderIdentity()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 224
    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v8, "eng"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 229
    .local v5, "uid":I
    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 230
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "packages":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 232
    .local v4, "sigs":[Landroid/content/pm/Signature;
    array-length v8, v2

    move v6, v7

    .end local v4    # "sigs":[Landroid/content/pm/Signature;
    :goto_0
    if-lt v6, v8, :cond_1

    .line 244
    return v7

    .line 225
    .end local v2    # "packages":[Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "uid":I
    :cond_0
    return v11

    .line 232
    .restart local v2    # "packages":[Ljava/lang/String;
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "uid":I
    :cond_1
    aget-object v1, v2, v6

    .local v1, "pName":Ljava/lang/String;
    const/16 v9, 0x40

    .line 234
    :try_start_0
    invoke-virtual {v3, v1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v4, v9, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_1
    iget-object v9, p0, Lcom/samsung/android/app/executor/ExecutorService;->mBixbyAgentPackageName:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 232
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 239
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    if-eqz v4, :cond_2

    array-length v9, v4

    if-lez v9, :cond_2

    sget-object v9, Lcom/samsung/android/app/executor/ExecutorService;->mBixbAgentSignature:Landroid/content/pm/Signature;

    aget-object v10, v4, v7

    invoke-virtual {v9, v10}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 240
    return v11
.end method

.method private handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "jsonResponse":Ljava/lang/String;
    const-string/jumbo v1, "nlg"

    .line 104
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "app_context"

    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "param_filling"

    .line 108
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "state_log"

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "client_control"

    .line 112
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "state_command_result"

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "rule_set_version"

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 119
    sget-object v1, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .end local v0    # "jsonResponse":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 105
    .restart local v0    # "jsonResponse":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeNlgCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 107
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeAppContextResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 109
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeParamFillResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 111
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeStateLogCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 113
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeClientControlCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 115
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p2}, Lcom/samsung/android/app/executor/ExecutorService;->makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0

    .line 117
    .local v0, "jsonResponse":Ljava/lang/String;
    :cond_6
    move-object v0, p2

    .local v0, "jsonResponse":Ljava/lang/String;
    goto :goto_0
.end method

.method private makeAppContextResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_context_result\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 164
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeClientControlCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_client_control\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeNlgCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_request_nlg\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeParamFillResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_param_filling_result\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\"content\":{\"result\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    .line 147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeStateLogCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"version\":\"1.0\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"command\":\"esem_state_log\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\"content\":{"

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method

.method private makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/app/executor/ExecutorService;->mStateCommandJsonFromEm:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 174
    .local v3, "jsonObjSrc":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    .local v1, "jsonObjRes":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "jsonObjResContent":Lorg/json/JSONObject;
    const-string/jumbo v6, "version"

    const-string/jumbo v7, "version"

    .line 178
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "command"

    const-string/jumbo v7, "esem_state_result"

    .line 179
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "requestId"

    const-string/jumbo v7, "requestId"

    .line 180
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "result"

    .line 182
    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    .line 184
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .local v4, "jsonObjSrcContent":Lorg/json/JSONObject;
    const-string/jumbo v6, "state"

    const-string/jumbo v7, "state"

    .line 185
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v6, "content"

    .line 187
    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 195
    .end local v1    # "jsonObjRes":Lorg/json/JSONObject;
    .end local v2    # "jsonObjResContent":Lorg/json/JSONObject;
    .end local v3    # "jsonObjSrc":Lorg/json/JSONObject;
    .end local v4    # "jsonObjSrcContent":Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 194
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v5, 0x0

    .line 193
    .local v5, "jsonRes":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mBinder:Lcom/samsung/android/app/executor/IExecutorService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecutorService onCreate package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {}, Lcom/samsung/android/app/executor/ExecutorMediator;->getInstance()Lcom/samsung/android/app/executor/ExecutorMediator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    iget-object v1, p0, Lcom/samsung/android/app/executor/ExecutorService;->mResponseFromMediator:Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setPackageName(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 249
    sget-object v0, Lcom/samsung/android/app/executor/ExecutorService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExecutorService onDestroy package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/executor/ExecutorService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setRuleRunning(Z)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/executor/ExecutorService;->mMediator:Lcom/samsung/android/app/executor/ExecutorMediator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/executor/ExecutorMediator;->setResponseCallback(Lcom/samsung/android/app/executor/ExecutorMediator$OnResponseCallback;)V

    .line 252
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 253
    return-void
.end method
