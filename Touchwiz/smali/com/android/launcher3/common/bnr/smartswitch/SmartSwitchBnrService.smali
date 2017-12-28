.class public Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;
.super Landroid/app/IntentService;
.source "SmartSwitchBnrService.java"

# interfaces
.implements Lcom/android/launcher3/common/bnr/LauncherBnrListener;


# static fields
.field private static final BNR_PERMISSION:Ljava/lang/String; = "com.sec.permission.BACKUP_RESTORE_HOMESCREEN"

.field private static final REQUEST_RESTORE_CONTACT_SHORTCUT:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_CONTACT_SHORTCUT"

.field private static final TAG:Ljava/lang/String; = "Launcher.SSBnrService"

.field private static final VCF_RESTORE_PATH:Ljava/lang/String;


# instance fields
.field private mSecurityLevel:I

.field private mSessionKey:Ljava/lang/String;

.field private mSessionTime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/TempVcfForContact"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->VCF_RESTORE_PATH:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "SmartSwitchBnrService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 57
    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 71
    return-void
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;
    .locals 9
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 216
    const-string v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 219
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    new-array v2, v6, [B

    .line 221
    .local v2, "iv":[B
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-gez v6, :cond_0

    .line 222
    const/4 v6, 0x0

    .line 242
    :goto_0
    return-object v6

    .line 225
    :cond_0
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 227
    .local v5, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    const/16 v6, 0x10

    new-array v3, v6, [B

    .line 228
    .local v3, "salt":[B
    const/4 v6, 0x1

    if-ne p3, v6, :cond_1

    .line 229
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 232
    :cond_1
    const/4 v4, 0x0

    .line 235
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-direct {p0, p2, p3, v3}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 241
    :goto_1
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 242
    new-instance v6, Ljavax/crypto/CipherInputStream;

    invoke-direct {v6, p1, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Launcher.SSBnrService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decryptStream secretKey Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "sessionKey"    # Ljava/lang/String;
    .param p3, "securityLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 182
    const-string v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 185
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v7

    new-array v2, v7, [B

    .line 188
    .local v2, "iv":[B
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 189
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 192
    .local v5, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 194
    const/16 v7, 0x10

    new-array v3, v7, [B

    .line 195
    .local v3, "salt":[B
    if-ne p3, v10, :cond_0

    .line 196
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 197
    .local v6, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v6, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 198
    invoke-virtual {p1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 201
    .end local v6    # "sr":Ljava/security/SecureRandom;
    :cond_0
    const/4 v4, 0x0

    .line 204
    .local v4, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-direct {p0, p2, p3, v3}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 210
    :goto_0
    invoke-virtual {v0, v10, v4, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 211
    new-instance v7, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v7, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v7

    .line 205
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Launcher.SSBnrService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "encryptStream secretKey Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private generateSecretKey(Ljava/lang/String;I[B)Ljavax/crypto/spec/SecretKeySpec;
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "securityLevel"    # I
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 250
    const/4 v9, 0x1

    if-ne p2, v9, :cond_0

    .line 251
    const/16 v2, 0x3e8

    .line 252
    .local v2, "iterationCount":I
    const/16 v6, 0x100

    .line 253
    .local v6, "keyLength":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 255
    .local v0, "chars":[C
    const-string v9, "PBKDF2WithHmacSHA1"

    invoke-static {v9}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 256
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    new-instance v7, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v7, v0, p3, v2, v6}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    .line 257
    .local v7, "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    invoke-virtual {v5, v7}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 259
    .local v3, "key":Ljavax/crypto/SecretKey;
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v8, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 269
    .end local v0    # "chars":[C
    .end local v2    # "iterationCount":I
    .end local v3    # "key":Ljavax/crypto/SecretKey;
    .end local v5    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "keyLength":I
    .end local v7    # "keySpec":Ljavax/crypto/spec/PBEKeySpec;
    .local v8, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v8

    .line 261
    .end local v8    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    const-string v9, "SHA-256"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 262
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string v9, "UTF-8"

    invoke-virtual {p1, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 263
    const/16 v9, 0x10

    new-array v4, v9, [B

    .line 264
    .local v4, "keyBytes":[B
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v9

    array-length v10, v4

    invoke-static {v9, v11, v4, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    new-instance v8, Ljavax/crypto/spec/SecretKeySpec;

    const-string v9, "AES"

    invoke-direct {v8, v4, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .restart local v8    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    goto :goto_0
.end method


# virtual methods
.method public backupComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    .locals 4
    .param p1, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    .line 117
    const-string v1, "Launcher.SSBnrService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "backupComplete result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMELAYOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, "backupResult":Landroid/content/Intent;
    const-string v1, "RESULT"

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 121
    const-string v1, "ERR_CODE"

    iget v2, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    if-eqz p2, :cond_0

    .line 123
    const-string v1, "REQ_SIZE"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    :goto_0
    const-string v1, "SOURCE"

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "EXPORT_SESSION_TIME"

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 125
    :cond_0
    const-string v1, "REQ_SIZE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getDecryptStream(Ljava/io/FileInputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "fis"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptStream(Ljava/io/FileOutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    iget v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 75
    if-nez p1, :cond_1

    .line 76
    const-string v1, "Launcher.SSBnrService"

    const-string v3, "intent is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "action":Ljava/lang/String;
    const-string v1, "Launcher.SSBnrService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onHandleIntent action : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object v11, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 85
    iput-object v11, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    .line 86
    iput-object v11, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 87
    iput v10, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 89
    const-string v1, "com.sec.android.intent.action.REQUEST_BACKUP_HOMELAYOUT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    const-string v1, "SAVE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "path":Ljava/lang/String;
    const-string v1, "SESSION_KEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 92
    const-string v1, "EXPORT_SESSION_TIME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionTime:Ljava/lang/String;

    .line 93
    const-string v1, "SOURCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 94
    const-string v1, "SECURITY_LEVEL"

    invoke-virtual {p1, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 96
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v7

    .line 97
    .local v7, "backupHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-virtual {v7, v1, v2, v3, p0}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->backup(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    goto :goto_0

    .line 98
    .end local v2    # "path":Ljava/lang/String;
    .end local v7    # "backupHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    :cond_2
    const-string v1, "com.sec.android.intent.action.REQUEST_RESTORE_HOMELAYOUT"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const-string v1, "SAVE_PATH"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    .restart local v2    # "path":Ljava/lang/String;
    const-string v1, "SESSION_KEY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSessionKey:Ljava/lang/String;

    .line 101
    const-string v1, "SOURCE"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    .line 102
    const-string v1, "SECURITY_LEVEL"

    invoke-virtual {p1, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSecurityLevel:I

    .line 103
    const-string v1, "DEBUG_LEVEL"

    invoke-virtual {p1, v1, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 105
    .local v4, "debugLevel":I
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 106
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-virtual {v1, v3, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 107
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 108
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "contact_shortcut_ids"

    invoke-interface {v8, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 110
    invoke-static {}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getInstance()Lcom/android/launcher3/common/bnr/LauncherBnrHelper;

    move-result-object v0

    .line 111
    .local v0, "restoreHelper":Lcom/android/launcher3/common/bnr/LauncherBnrHelper;
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->restore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/android/launcher3/common/bnr/LauncherBnrListener;)V

    goto/16 :goto_0
.end method

.method public restoreComplete(Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;Ljava/io/File;)V
    .locals 9
    .param p1, "result"    # Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;
    .param p2, "saveFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 135
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 136
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v5, "contact_shortcut_ids"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 137
    .local v1, "contactShortcuts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 138
    const-string v5, "Launcher.SSBnrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send restoreComplete after restore contact shortcut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 140
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "smartswitch_restore_result"

    iget v6, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 141
    const-string v5, "smartswitch_restore_error_code"

    iget v6, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 142
    if-eqz p2, :cond_0

    .line 143
    const-string v5, "smartswich_save_file_length"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    :goto_0
    const-string v5, "smartswitch_restore_source"

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    const-string v5, "Launcher.SSBnrService"

    const-string v6, "send broadcast - restore contact shortcut"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.sec.android.intent.action.REQUEST_RESTORE_CONTACT_SHORTCUT"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "contactIntent":Landroid/content/Intent;
    const-string v5, "FILE_PATH"

    sget-object v6, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->VCF_RESTORE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.sec.permission.BACKUP_RESTORE_HOMESCREEN"

    invoke-virtual {v5, v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 166
    .end local v0    # "contactIntent":Landroid/content/Intent;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 145
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v5, "smartswich_save_file_length"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 154
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v5, "Launcher.SSBnrService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreComplete result : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMELAYOUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v4, "restoreResult":Landroid/content/Intent;
    const-string v5, "RESULT"

    iget v6, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->result:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v5, "ERR_CODE"

    iget v6, p1, Lcom/android/launcher3/common/bnr/LauncherBnrListener$Result;->errorCode:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    if-eqz p2, :cond_2

    .line 159
    const-string v5, "REQ_SIZE"

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    :goto_2
    const-string v5, "SOURCE"

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->mSource:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/smartswitch/SmartSwitchBnrService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 161
    :cond_2
    const-string v5, "REQ_SIZE"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method
