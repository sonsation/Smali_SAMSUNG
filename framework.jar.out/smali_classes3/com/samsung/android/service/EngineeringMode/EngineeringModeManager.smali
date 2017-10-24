.class public final Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# static fields
.field public static final ALLOWED:I = 0x1

.field public static final DISABLE:I = 0x1

.field public static final ENABLE:I = 0x0

.field public static final ENG_KERNEL:I = 0x0

.field public static final ERRORBYTE_EM_SERVICE:[B

.field public static final ERROR_EM_SERVICE:I = -0x3e8

.field public static final MODE_ENG_KERNEL:I = 0x0

.field public static final MODE_TEST_ENV:I = 0x1

.field public static final MODE_USB_DEBUG:I = 0x1

.field public static final NOK:I = 0x0

.field public static final NOT_ALLOWED:I = 0x0

.field public static final OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EngineeringModeManager"

.field public static final USB_DEBUG:I = 0x1

.field public static final USB_DEBUG_ALLOWED:I = 0x1

.field public static final USB_DEBUG_NOT_ALLOWED:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    .line 70
    const-string/jumbo v0, "EngineeringModeService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    .line 71
    const-string/jumbo v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " connects to EngineeringModeService."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method


# virtual methods
.method public getID()[B
    .locals 4

    .prologue
    .line 261
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getID() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getID()[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 276
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    .line 268
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 269
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 271
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public getNumOfModes()I
    .locals 5

    .prologue
    const/16 v4, -0x3e8

    .line 287
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getNumOfModes() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getNumOfModes()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    return v4

    .line 294
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 295
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 297
    return v4
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B

    .prologue
    .line 126
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getRequestMsg() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    const/4 v3, 0x0

    invoke-interface {v2, p1, p2, p3, v3}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 134
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    .locals 4
    .param p1, "singleID"    # Ljava/lang/String;
    .param p2, "OTP"    # Ljava/lang/String;
    .param p3, "modeSet"    # [B
    .param p4, "validityCount"    # I

    .prologue
    .line 156
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getRequestMsg() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getRequestMsg(Ljava/lang/String;Ljava/lang/String;[BI)[B
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 171
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 166
    sget-object v2, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->ERRORBYTE_EM_SERVICE:[B

    return-object v2
.end method

.method public getStatus(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/16 v4, -0x3e8

    .line 97
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "getStatus() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->getStatus(I)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    return v4

    .line 104
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 105
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    return v4
.end method

.method public installToken([B)I
    .locals 5
    .param p1, "token"    # [B

    .prologue
    const/16 v4, -0x3e8

    .line 183
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "installToken() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2, p1}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->installToken([B)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    return v4

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 191
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 193
    return v4
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    return v0

    .line 85
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTokenInstalled()I
    .locals 5

    .prologue
    const/16 v4, -0x3e8

    .line 209
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "isTokenInstalled() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->isTokenInstalled()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    return v4

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 217
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 219
    return v4
.end method

.method public removeToken()I
    .locals 5

    .prologue
    const/16 v4, -0x3e8

    .line 235
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "removeToken() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->removeToken()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    return v4

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 243
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    return v4
.end method

.method public sendFuseCmd()I
    .locals 5

    .prologue
    const/16 v4, -0x3e8

    .line 313
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "sendFuseCmd() is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->mService:Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;

    invoke-interface {v2}, Lcom/samsung/android/service/EngineeringMode/IEngineeringModeService;->sendFuseCmd()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 328
    return v4

    .line 320
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 321
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string/jumbo v2, "EngineeringModeManager"

    const-string/jumbo v3, "Failed to connect service."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    return v4
.end method
