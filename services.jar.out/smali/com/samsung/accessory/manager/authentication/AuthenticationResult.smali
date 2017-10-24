.class public Lcom/samsung/accessory/manager/authentication/AuthenticationResult;
.super Ljava/lang/Object;
.source "AuthenticationResult.java"


# static fields
.field public static final ADDITIONAL_FIELD_EXTRA_ONLY:I = 0x2

.field public static final ADDITIONAL_FIELD_NONE:I = 0x0

.field public static final ADDITIONAL_FIELD_UNIFIED_EXIST:I = 0x3

.field public static final ADDITIONAL_FIELD_URI_ONLY:I = 0x1

.field public static final API_STATE_DEFAULT:I = 0x0

.field public static final API_STATE_STARTCOVERAUTH:I = 0x1

.field public static final API_STATE_STOPCOVERAUTH:I = 0x3

.field public static final API_STATE_TRANCEIVEAUTHDATA:I = 0x2

.field public static final AUTH_FAIL_REASON_AUTHENTICATION_TRANSACTION:I = 0x2d

.field public static final AUTH_FAIL_REASON_AUTH_FAILED:I = 0x1

.field public static final AUTH_FAIL_REASON_COMMAND_DATA_LOST:I = 0x15

.field public static final AUTH_FAIL_REASON_COMMAND_DUPLICATED:I = 0x18

.field public static final AUTH_FAIL_REASON_COMMAND_LENGTH_INVALID:I = 0x19

.field public static final AUTH_FAIL_REASON_COMMAND_NULL:I = 0x1a

.field public static final AUTH_FAIL_REASON_COMMAND_OUT_OF_SEQUENCE:I = 0x17

.field public static final AUTH_FAIL_REASON_COMMAND_REJECTED:I = 0x14

.field public static final AUTH_FAIL_REASON_COMMAND_TIMEOUT:I = 0x16

.field public static final AUTH_FAIL_REASON_COMMAND_UNDEFINED:I = 0x1b

.field public static final AUTH_FAIL_REASON_CONECTIVITY_BUSY:I = 0xd

.field public static final AUTH_FAIL_REASON_CONECTIVITY_DOWN:I = 0xc

.field public static final AUTH_FAIL_REASON_CONECTIVITY_ERROR:I = 0xa

.field public static final AUTH_FAIL_REASON_CONECTIVITY_MAXIMUM_CONNECTION_REACHED:I = 0xb

.field public static final AUTH_FAIL_REASON_CONNECTIVITY_EXCEPTION:I = 0xe

.field public static final AUTH_FAIL_REASON_FIRMWARE_DOWNLOAD:I = 0x29

.field public static final AUTH_FAIL_REASON_INTERNAL_ERROR:I = 0x5a

.field public static final AUTH_FAIL_REASON_LED_TRANSACTION:I = 0x28

.field public static final AUTH_FAIL_REASON_NFC_TURNING_OFF:I = 0x2b

.field public static final AUTH_FAIL_REASON_NFC_TURNING_ON:I = 0x2a

.field public static final AUTH_FAIL_REASON_SESSION_BUSY:I = 0x1e

.field public static final AUTH_FAIL_REASON_SESSION_INTERRUPTED:I = 0x20

.field public static final AUTH_FAIL_REASON_SESSION_TIMEOUT:I = 0x1f

.field public static final AUTH_FAIL_REASON_TAG_PRESENT:I = 0x2e

.field public static final AUTH_FAIL_REASON_TIMEOUT:I = 0x5b

.field public static final AUTH_FAIL_REASON_WIRELESS_CHARGING:I = 0x2c

.field public static final AUTH_REASON:Ljava/lang/String; = "reason"

.field public static final AUTH_SUCCESS:I = 0x0

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_AUTHENTICATION_ADDRESS:Ljava/lang/String; = "address"

.field public static final EXTRA_CLASS_NAME:Ljava/lang/String; = "class_name"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "connectivity_type"

.field public static final EXTRA_ID:Ljava/lang/String; = "extra_id"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field apiState:I

.field isKeyChanged:Z

.field isUrlExist:I

.field mAuthenticationResult:Z

.field private mBundle:Landroid/os/Bundle;

.field mByteArrayExtraData:[B

.field mByteArrayManagerURI:[B

.field mConnectivityType:I

.field mExtraID:[B

.field mReason:I

.field mRequestPkg:Ljava/lang/String;

.field mStringExtraData:Ljava/lang/String;

.field mStringManagerURI:Ljava/lang/String;

.field needKeyChange:Z

.field private publicKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    .line 71
    iput-boolean v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mAuthenticationResult:Z

    .line 80
    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 81
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 85
    iput v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 7
    return-void
.end method


# virtual methods
.method public byteArrayToString([B)Ljava/lang/String;
    .locals 6
    .param p1, "input"    # [B

    .prologue
    .line 220
    if-eqz p1, :cond_1

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 223
    const-string/jumbo v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 227
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :cond_1
    const-string/jumbo v2, "null"

    return-object v2
.end method

.method public getApiState()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    return v0
.end method

.method public getByteArrayExtraData()[B
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    return-object v0
.end method

.method public getByteArrayManagerURI()[B
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    return-object v0
.end method

.method public getConnectivityType()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    return v0
.end method

.method public getExtraId()[B
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    return v0
.end method

.method public getRequestPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getResultBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "extra"

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStringExtraData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    return-object v0
.end method

.method public getStringManagerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyChanged()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    return v0
.end method

.method public needKeyChange()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    return v0
.end method

.method public setApiState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 216
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->apiState:I

    .line 215
    return-void
.end method

.method public setConnectivityType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 174
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mConnectivityType:I

    .line 173
    return-void
.end method

.method public setExtraData([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 127
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayExtraData:[B

    .line 128
    if-eqz p1, :cond_0

    .line 130
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    .line 131
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringExtraData:Ljava/lang/String;

    goto :goto_0
.end method

.method public setExtraId([B)V
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 144
    if-eqz p1, :cond_3

    .line 145
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    .line 146
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    array-length v2, p1

    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 147
    array-length v1, p1

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mExtraID:[B

    const/16 v2, 0x15

    aget-byte v1, v1, v2

    and-int/lit16 v0, v1, 0xff

    .line 149
    .local v0, "url":I
    if-ne v0, v4, :cond_1

    .line 150
    iput v4, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    .line 142
    .end local v0    # "url":I
    :cond_0
    :goto_0
    return-void

    .line 151
    .restart local v0    # "url":I
    :cond_1
    if-ne v0, v5, :cond_2

    .line 152
    iput v5, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    .line 153
    :cond_2
    if-ne v0, v6, :cond_0

    .line 154
    iput v6, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isUrlExist:I

    goto :goto_0

    .line 157
    .end local v0    # "url":I
    :cond_3
    sget-object v1, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setExtraId : data is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setKeyChanged(Z)V
    .locals 0
    .param p1, "isKeyChanged"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 191
    return-void
.end method

.method public setManagerURI([B)V
    .locals 3
    .param p1, "uri"    # [B

    .prologue
    .line 111
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mByteArrayManagerURI:[B

    .line 112
    if-eqz p1, :cond_0

    .line 114
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mStringManagerURI:Ljava/lang/String;

    goto :goto_0
.end method

.method public setNeedKeyChange(Z)V
    .locals 0
    .param p1, "needKeyChange"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    .line 106
    return-void
.end method

.method public setPublicKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->publicKey:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setReason(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mReason:I

    .line 201
    if-nez p1, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->isKeyChanged:Z

    .line 204
    iput-boolean v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->needKeyChange:Z

    .line 205
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    return-void
.end method

.method public setRequestPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationResult;->mRequestPkg:Ljava/lang/String;

    .line 165
    return-void
.end method
