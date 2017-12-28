.class public Lcom/samsung/android/sdk/bixby/BixbyAppService;
.super Landroid/app/Service;
.source "BixbyAppService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;
    }
.end annotation


# static fields
.field private static final BIXBY_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.bixby.agent"

.field private static final BIXBY_COMMAND_VERSION:Ljava/lang/String; = "1.0"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mActorThreadHandler:Landroid/os/HandlerThread;

.field private static mBixbAgentSignature:Landroid/content/pm/Signature;

.field private static final mIsUserBuild:Z


# instance fields
.field mBinder:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

.field private mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

.field private mHandler:Landroid/os/Handler;

.field private mIsKnoxId:Z

.field mResponseFromMediator:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_0.2.7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    .line 29
    const-string v0, "user"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsUserBuild:Z

    .line 30
    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsUserBuild:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    .line 41
    new-instance v0, Landroid/content/pm/Signature;

    const-string v2, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbAgentSignature:Landroid/content/pm/Signature;

    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsKnoxId:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;-><init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mResponseFromMediator:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    .line 259
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;-><init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBinder:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyAppService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/sdk/bixby/BixbyAppService;Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyAppService;
    .param p1, "x1"    # Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mCallbackToBa:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/bixby/BixbyAppService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyAppService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyAppService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->checkSenderIdentity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/bixby/BixbyAppService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

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
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 290
    sget-boolean v8, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsUserBuild:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsKnoxId:Z

    if-eqz v8, :cond_2

    :cond_0
    move v6, v7

    .line 313
    :cond_1
    :goto_0
    return v6

    .line 294
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 295
    .local v5, "uid":I
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 296
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 297
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 300
    const/4 v4, 0x0

    .line 301
    .local v4, "sigs":[Landroid/content/pm/Signature;
    array-length v9, v2

    move v8, v6

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v1, v2, v8

    .line 302
    .local v1, "pName":Ljava/lang/String;
    const-string v10, "com.samsung.android.bixby.agent"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 304
    const/16 v10, 0x40

    :try_start_0
    invoke-virtual {v3, v1, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v4, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 305
    if-eqz v4, :cond_3

    array-length v10, v4

    if-lez v10, :cond_3

    sget-object v10, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbAgentSignature:Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v11, v4, v11

    invoke-virtual {v10, v11}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_3

    move v6, v7

    .line 306
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 301
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private handleResponseCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "resultCode"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 185
    .local v0, "jsonResponse":Ljava/lang/String;
    const-string v1, "esem_request_nlg"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    :goto_0
    return-object v0

    .line 187
    :cond_0
    const-string v1, "esem_request_tts"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 189
    :cond_1
    const-string v1, "esem_context_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_2
    const-string v1, "esem_param_filling_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"result\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_3
    const-string v1, "esem_state_log"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_4
    const-string v1, "esem_client_control"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 197
    :cond_5
    const-string v1, "state_command_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 198
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 199
    :cond_6
    const-string v1, "esem_chatty_mode_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"result\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 201
    :cond_7
    const-string v1, "esem_cancel_chatty_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 203
    :cond_8
    const-string v1, "esem_split_state_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"selectedStateId\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 205
    :cond_9
    const-string v1, "esem_all_states_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"result\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 207
    :cond_a
    const-string v1, "esem_user_confirm_result"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 210
    :cond_b
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleResponseCommand: Unsupported Command:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isKnoxId()Z
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 104
    :try_start_0
    const-string v6, "android.os.UserHandle"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 105
    .local v4, "userHandle":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "semGetMyUserId"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 106
    .local v2, "getInstance":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 107
    .local v5, "userId":I
    sget-boolean v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 108
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "userId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    const-string v6, "com.samsung.android.knox.SemPersonaManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 114
    .local v3, "semPersonaManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "isKnoxId"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v3, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 115
    const/4 v6, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 116
    .local v0, "bRet":Z
    sget-boolean v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 117
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bRet = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 131
    .end local v0    # "bRet":Z
    .end local v2    # "getInstance":Ljava/lang/reflect/Method;
    .end local v3    # "semPersonaManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "userHandle":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "userId":I
    :cond_1
    :goto_0
    return v0

    .line 121
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    const-string v8, "isKnoxId: Can\'t read information on KNOX."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 131
    goto :goto_0

    .line 121
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method private makeStateResultCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v6, v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStateCommandJsonFromBa:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 227
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    const-string v7, "makeStateResultCommand: Can\'t make a state result command. Ignored."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/4 v5, 0x0

    .line 255
    :goto_0
    return-object v5

    .line 233
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v6, v6, Lcom/samsung/android/sdk/bixby/BixbyApi;->mStateCommandJsonFromBa:Ljava/lang/String;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    .local v3, "jsonObjSrc":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .local v1, "jsonObjRes":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .local v2, "jsonObjResContent":Lorg/json/JSONObject;
    const-string v6, "version"

    const-string v7, "1.0"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v6, "command"

    const-string v7, "esem_state_result"

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v6, "requestId"

    const-string v7, "requestId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v6, "result"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v6, "content"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 245
    .local v4, "jsonObjSrcContent":Lorg/json/JSONObject;
    const-string v6, "state"

    const-string v7, "state"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v6, "content"

    invoke-virtual {v1, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "jsonRes":Ljava/lang/String;
    goto :goto_0

    .line 251
    .end local v1    # "jsonObjRes":Lorg/json/JSONObject;
    .end local v2    # "jsonObjResContent":Lorg/json/JSONObject;
    .end local v3    # "jsonObjSrc":Lorg/json/JSONObject;
    .end local v4    # "jsonObjSrcContent":Lorg/json/JSONObject;
    .end local v5    # "jsonRes":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 253
    const/4 v5, 0x0

    .restart local v5    # "jsonRes":Ljava/lang/String;
    goto :goto_0
.end method

.method private wrapCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"version\":\""

    .line 219
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"command\":\""

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"content\":{"

    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "jsonResponse":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceBound(Landroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBinder:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 83
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService onCreate package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->isKnoxId()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mIsKnoxId:Z

    .line 86
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->getInstance()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mResponseFromMediator:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->setResponseCallback(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V

    .line 89
    const-string v0, "com.samsung.android.bixby.agent"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExtCmdHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    .line 92
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mActorThreadHandler:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->mHandler:Landroid/os/Handler;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceCreated()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 318
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService onDestroy package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->clearData()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceDestroyed()V

    .line 321
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 322
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->onServiceUnbound(Landroid/content/Intent;)V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
