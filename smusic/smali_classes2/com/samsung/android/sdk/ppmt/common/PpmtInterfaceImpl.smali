.class public Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;
.super Ljava/lang/Object;
.source "PpmtInterfaceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appStarted(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-object v0, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v1, "app started"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveNSendDAU(Landroid/content/Context;)V

    .line 145
    return-void
.end method

.method public static appUpdated(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 213
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v1, "extra_action"

    const-string v2, "handle_app_update"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 216
    return-void
.end method

.method public static deregistration(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 148
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v2, "deregister"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 152
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregState(Z)V

    .line 157
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isFirstInit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->deleteData(Landroid/content/Context;)V

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregSendDone(Z)V

    .line 161
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->deleteDataNSendDereg(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static feedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 227
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] custom feedback added. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "extra_action"

    const-string v2, "custom_fb"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "mid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    const-string v1, "event"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 234
    return-void
.end method

.method private static genPpmtID(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "deviceID"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-object v3

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/sdk/ppmt/common/SecurityUtil;->encodeWithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "encoredDid":Ljava/lang/String;
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeviceIDType()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "deviceIDType":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getMarketingAgree(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 177
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_0

    .line 178
    sget-object v2, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v3, "getMarketingAgree db handler null."

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v1, 0x0

    .line 183
    :goto_0
    return v1

    .line 181
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getMarketingAgree()Z

    move-result v1

    .line 182
    .local v1, "enabled":Z
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method

.method private static getPpmtID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 242
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPpmtID()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "ppmtID":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    .line 252
    :goto_0
    return-object v1

    .line 246
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0, p1}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->genPpmtID(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    const/4 v1, 0x0

    goto :goto_0

    .line 250
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setPpmtID(Ljava/lang/String;)V

    move-object v1, v0

    .line 252
    goto :goto_0
.end method

.method public static getPushToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 85
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPushType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x1

    .line 89
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 90
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "type":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    const-string/jumbo v3, "spp"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const/4 v2, 0x1

    goto :goto_0

    .line 98
    :cond_2
    const-string v3, "gcm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v2

    .line 20
    .local v2, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setAID(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setCountryIso(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v0

    .line 24
    .local v0, "isDereg":Z
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isTncAgreed()Z

    move-result v1

    .line 26
    .local v1, "isTncAgreed":Z
    sget-object v3, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initialize. tncAgree : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dereg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregSendDone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 30
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->sendDereg(Landroid/content/Context;)V

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->requestIncompletePushEvents(Landroid/content/Context;)V

    .line 36
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->getPpmtID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveNSendBasicData(Landroid/content/Context;)V

    .line 48
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->requestSendImmCumulativeData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isTncAgreed(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 166
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isTncAgreed()Z

    move-result v0

    return v0
.end method

.method public static isValidPIDBoundary(Ljava/lang/String;)Z
    .locals 4
    .param p0, "pid"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static messageReceived(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pushType"    # I

    .prologue
    .line 188
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 189
    const-string/jumbo v2, "spp"

    .line 190
    .local v2, "type":Ljava/lang/String;
    const-string v3, "appData"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "appData":Ljava/lang/String;
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 197
    sget-object v3, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    const-string v4, "messageReceived on dereg state."

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->sendDereg(Landroid/content/Context;)V

    .line 209
    :goto_1
    return-void

    .line 192
    .end local v0    # "appData":Ljava/lang/String;
    .end local v2    # "type":Ljava/lang/String;
    :cond_0
    const-string v2, "gcm"

    .line 193
    .restart local v2    # "type":Ljava/lang/String;
    const-string v3, "ppmt"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "appData":Ljava/lang/String;
    goto :goto_0

    .line 202
    :cond_1
    sget-object v3, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "messageReceived. type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    .local v1, "dataSvcIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string v3, "extra_action"

    const-string v4, "handle_push"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    const-string v3, "push_type"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string v3, "appdata"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method private static requestIncompletePushEvents(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtDataService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.sdk.ppmt.DATASERVICE_EVENTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v1, "extra_action"

    const-string v2, "handle_incomplete_events"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v1, "boot_comp"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 224
    return-void
.end method

.method public static setMarketingAgree(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "agree"    # Z

    .prologue
    .line 170
    new-instance v1, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;-><init>()V

    const-string v2, "bAgreement"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->setData(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/PpmtData$Builder;->build()Lcom/samsung/android/sdk/ppmt/PpmtData;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/sdk/ppmt/PpmtData;->send(Landroid/content/Context;)V

    .line 171
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 172
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setPushAgreementTime(J)V

    .line 173
    return-void
.end method

.method public static setPushToken(Landroid/content/Context;ILjava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pushType"    # I
    .param p2, "pushToken"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-object v4, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPushToken. type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v2

    .line 55
    .local v2, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    const-string/jumbo v3, "spp"

    .line 57
    .local v3, "type":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, "currentPid":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "currentPType":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 81
    :cond_0
    :goto_1
    return-void

    .line 55
    .end local v0    # "currentPType":Ljava/lang/String;
    .end local v1    # "currentPid":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    const-string v3, "gcm"

    goto :goto_0

    .line 63
    .restart local v0    # "currentPType":Ljava/lang/String;
    .restart local v1    # "currentPid":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    invoke-virtual {v2, p2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setPID(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setPType(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->getPpmtID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 70
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isTncAgreed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 78
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isFirstInit()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveNSendImmBasicData(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public static setTncAgreement(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isAgree"    # Z

    .prologue
    .line 106
    sget-object v1, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTncAgree - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    .line 109
    .local v0, "prefManager":Lcom/samsung/android/sdk/ppmt/storage/PrefManager;
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getDeregState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    const-string/jumbo v1, "send_dereg"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->initRetryCountAndAlarm(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setDeregState(Z)V

    .line 116
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isTncAgreed()Z

    move-result v1

    if-ne v1, p1, :cond_2

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 119
    :cond_2
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setTncAgreed(Z)V

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getPID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/common/PpmtInterfaceImpl;->getPpmtID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->isFirstInit()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/data/DataManager;->saveNSendImmBasicData(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setUserId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 137
    if-nez p1, :cond_0

    .line 138
    const-string p1, ""

    .line 139
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->setUID(Ljava/lang/String;)V

    .line 140
    return-void
.end method
