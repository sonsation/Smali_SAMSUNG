.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field private static final CERTIFICATE_STRING:Ljava/lang/String; = "certificate"

.field public static final FLAG_ENCRYPTED:I = 0x1

.field public static final FLAG_NONE:I = 0x0

.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final OP_AUTH_NEEDED:I = 0xf

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field private static final SYSTEM_CREDENTIAL_UIDS:[I

.field public static final SYSTEM_ERROR:I = 0x4

.field private static final TAG:Ljava/lang/String; = "KeyStore"

.field public static final UID_SELF:I = -0x1

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa

.field public static final mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lMdmService:Landroid/sec/enterprise/IEDMProxy;

.field private final mBinder:Landroid/security/IKeystoreService;

.field private final mContext:Landroid/content/Context;

.field private mError:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 97
    const/16 v0, 0x3f2

    const/16 v1, 0x3f8

    .line 98
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    .line 97
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Landroid/security/KeyStore;->SYSTEM_CREDENTIAL_UIDS:[I

    .line 977
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 1
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    .line 143
    iput-object p1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 144
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    .line 147
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    iput-object v0, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    .line 142
    return-void
.end method

.method private auditLogCertificateOrPrivateKeyInfo(Ljava/lang/String;ILjava/util/List;Z)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p4, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v1, 0x1

    .line 434
    invoke-direct {p0, p2}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "keyStoreString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 436
    invoke-direct {p0, p1}, Landroid/security/KeyStore;->isPrivateKeyPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 433
    :cond_0
    return-void

    .line 443
    :cond_1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "certificate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 444
    .local v7, "certificate":Ljava/security/cert/X509Certificate;
    if-eqz p4, :cond_2

    const/4 v0, 0x5

    .line 445
    :goto_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Deleting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p4, :cond_3

    const-string/jumbo v2, " succeeded."

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    const-string/jumbo v5, " Keystore : "

    .line 446
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    const-string/jumbo v5, ", Alias : "

    .line 446
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 447
    const-string/jumbo v5, ", Subject : "

    .line 446
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 448
    if-nez v7, :cond_4

    const-string/jumbo v2, "Not available"

    .line 446
    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 449
    const-string/jumbo v5, ", Issuer : "

    .line 446
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 449
    if-nez v7, :cond_5

    const-string/jumbo v2, "Not available"

    .line 446
    :goto_4
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 450
    invoke-direct {p0, p2, v1}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    move v2, p4

    .line 444
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 446
    :cond_3
    const-string/jumbo v2, " failed."

    goto :goto_2

    .line 448
    :cond_4
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_3

    .line 449
    :cond_5
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    goto :goto_4
.end method

.method private convertFromPem([B)Ljava/util/List;
    .locals 6
    .param p1, "cert"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1239
    const/4 v0, 0x0

    .line 1241
    .local v0, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_0

    .line 1242
    :try_start_0
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1252
    .end local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    :cond_1
    return-object v0

    .line 1248
    .restart local v0    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v2

    .line 1249
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "KeyStore"

    const-string/jumbo v5, "Failed converting certificate from pem"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1246
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 1247
    .local v3, "ex":Ljava/security/cert/CertificateException;
    const-string/jumbo v4, "KeyStore"

    const-string/jumbo v5, "Failed converting certificate from pem"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1244
    .end local v3    # "ex":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v1

    .line 1245
    .local v1, "ex":Ljava/io/IOException;
    const-string/jumbo v4, "KeyStore"

    const-string/jumbo v5, "Failed converting certificate from pem"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 3

    .prologue
    .line 153
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 154
    .local v0, "application":Landroid/app/Application;
    if-nez v0, :cond_0

    .line 155
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 156
    const-string/jumbo v2, "Failed to obtain application Context from ActivityThread"

    .line 155
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_0
    return-object v0
.end method

.method private getFingerprintOnlySid()J
    .locals 4

    .prologue
    .line 1173
    iget-object v1, p0, Landroid/security/KeyStore;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 1174
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    if-nez v0, :cond_0

    .line 1175
    const-wide/16 v2, 0x0

    return-wide v2

    .line 1180
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v2

    return-wide v2
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "keystore":Landroid/security/IKeystoreService;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    const-string/jumbo v1, "android.security.keystore"

    .line 165
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 173
    .local v0, "keystore":Landroid/security/IKeystoreService;
    :goto_0
    new-instance v1, Landroid/security/KeyStore;

    invoke-direct {v1, v0}, Landroid/security/KeyStore;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1

    .line 170
    .local v0, "keystore":Landroid/security/IKeystoreService;
    :cond_0
    const-string/jumbo v1, "android.security.keystore"

    .line 169
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreServiceMDFPP$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .local v0, "keystore":Landroid/security/IKeystoreService;
    goto :goto_0
.end method

.method public static getKeyStoreException(I)Landroid/security/KeyStoreException;
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 1076
    if-lez p0, :cond_0

    .line 1078
    packed-switch p0, :pswitch_data_0

    .line 1096
    :pswitch_0
    new-instance v0, Landroid/security/KeyStoreException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1080
    :pswitch_1
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "OK"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1082
    :pswitch_2
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "User authentication required"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1084
    :pswitch_3
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Keystore not initialized"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1086
    :pswitch_4
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "System error"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1088
    :pswitch_5
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Permission denied"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1090
    :pswitch_6
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Key not found"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1092
    :pswitch_7
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Key blob corrupted"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1094
    :pswitch_8
    new-instance v0, Landroid/security/KeyStoreException;

    const-string/jumbo v1, "Operation requires authorization"

    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1100
    :cond_0
    packed-switch p0, :pswitch_data_1

    .line 1107
    new-instance v0, Landroid/security/KeyStoreException;

    .line 1108
    invoke-static {p0}, Landroid/security/keymaster/KeymasterDefs;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1104
    :pswitch_9
    new-instance v0, Landroid/security/KeyStoreException;

    .line 1105
    const-string/jumbo v1, "Invalid user authentication validity duration"

    .line 1104
    invoke-direct {v0, p0, v1}, Landroid/security/KeyStoreException;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 1100
    :pswitch_data_1
    .packed-switch -0x10
        :pswitch_9
    .end packed-switch
.end method

.method private getKeyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1213
    const-string/jumbo v0, "certificate"

    .line 1214
    .local v0, "keyString":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1215
    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1216
    const-string/jumbo v0, "private key"

    .line 1221
    :cond_0
    :goto_0
    return-object v0

    .line 1217
    :cond_1
    const-string/jumbo v1, "USRSKEY_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1218
    const-string/jumbo v0, "secret key"

    goto :goto_0
.end method

.method private getKeystoreString(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 251
    const-string/jumbo v0, ""

    .line 252
    .local v0, "keystore":Ljava/lang/String;
    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_1

    .line 253
    const-string/jumbo v0, "Wi-Fi"

    .line 258
    :cond_0
    :goto_0
    return-object v0

    .line 254
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 255
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 256
    :cond_2
    const-string/jumbo v0, "VPN and Apps"

    goto :goto_0
.end method

.method private getRequestorInfo()Ljava/lang/String;
    .locals 16

    .prologue
    .line 191
    const-string/jumbo v10, ""

    .line 192
    .local v10, "role":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 193
    .local v6, "packageName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v11

    const/16 v12, 0x3e8

    if-ne v11, v12, :cond_2

    .line 194
    const-string/jumbo v10, "SystemApp"

    .line 199
    :goto_0
    :try_start_0
    const-string/jumbo v11, "android.app.ActivityManagerNative"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getDefault"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 200
    .local v2, "mAm":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getRunningAppProcesses"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 201
    .local v5, "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "processInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 202
    .local v7, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v11, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    if-ne v11, v12, :cond_0

    .line 203
    iget-object v6, v7, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 208
    .end local v7    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const-string/jumbo v11, "android.os.ServiceManager"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "getService"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 209
    const-string/jumbo v13, "enterprise_policy"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    .line 208
    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 210
    .local v0, "bEdm":Landroid/os/IBinder;
    const-string/jumbo v11, "com.samsung.android.knox.IEnterpriseDeviceManager$Stub"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "asInterface"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Landroid/os/IBinder;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 211
    const/4 v13, 0x0

    aput-object v0, v12, v13

    const/4 v13, 0x0

    .line 210
    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 212
    .local v3, "mEdm":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v12, "packageHasActiveAdmins"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 214
    .local v4, "mthdCheck":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-virtual {v4, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 215
    .local v9, "result":Z
    if-eqz v9, :cond_3

    .line 216
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|Administrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 224
    .end local v0    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "mAm":Ljava/lang/Object;
    .end local v3    # "mEdm":Ljava/lang/Object;
    .end local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    .end local v5    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .end local v8    # "processInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "result":Z
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ": uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " role="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 196
    :cond_2
    const-string/jumbo v10, "UserApp"

    goto/16 :goto_0

    .line 218
    .restart local v0    # "bEdm":Landroid/os/IBinder;
    .restart local v2    # "mAm":Ljava/lang/Object;
    .restart local v3    # "mEdm":Ljava/lang/Object;
    .restart local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    .restart local v5    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .restart local v8    # "processInfo$iterator":Ljava/util/Iterator;
    .restart local v9    # "result":Z
    :cond_3
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "|NonAdministrator"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_1

    .line 220
    .end local v0    # "bEdm":Landroid/os/IBinder;
    .end local v2    # "mAm":Ljava/lang/Object;
    .end local v3    # "mEdm":Ljava/lang/Object;
    .end local v4    # "mthdCheck":Ljava/lang/reflect/Method;
    .end local v5    # "mthdGetRunningAppProcesses":Ljava/lang/reflect/Method;
    .end local v8    # "processInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "result":Z
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "KeyStore"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Administrator status cannot be defined for requestor: uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 222
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v13

    .line 221
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 222
    const-string/jumbo v13, " pid="

    .line 221
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 222
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    .line 221
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized getToken()Landroid/os/IBinder;
    .locals 1

    .prologue
    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;

    .line 180
    :cond_0
    iget-object v0, p0, Landroid/security/KeyStore;->mToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getUserId(I)I
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 1199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v0

    return v0
.end method

.method private getUserId(IZ)I
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isAuditLog"    # Z

    .prologue
    .line 234
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 235
    .local v0, "userId":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 236
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 237
    :cond_1
    if-eqz p2, :cond_0

    const/16 v1, 0x3f2

    if-ne p1, v1, :cond_0

    .line 239
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isNeedMigration(I)Z
    .locals 4
    .param p0, "userId"    # I

    .prologue
    .line 998
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 999
    sget-object v1, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1000
    sget-object v1, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1002
    .local v0, "ks":Landroid/security/KeyStore;
    invoke-direct {v0, p0}, Landroid/security/KeyStore;->isNeedMigrationInternal(I)Z

    move-result v1

    return v1

    .line 1004
    .end local v0    # "ks":Landroid/security/KeyStore;
    :cond_0
    sget-object v1, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 1006
    .restart local v0    # "ks":Landroid/security/KeyStore;
    invoke-direct {v0, p0}, Landroid/security/KeyStore;->isNeedMigrationInternal(I)Z

    move-result v1

    return v1

    .line 1009
    .end local v0    # "ks":Landroid/security/KeyStore;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isNeedMigrationInternal(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1015
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->getState_MDFPP(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1021
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 1028
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 1016
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 1022
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    return v3

    .line 1023
    :pswitch_1
    return v3

    .line 1025
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    return v5

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isPrivateKeyPrefix(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1230
    invoke-direct {p0, p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "certificate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private refreshRollbackUserKeystore(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1266
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    if-eqz v1, :cond_0

    .line 1268
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->lMdmService:Landroid/sec/enterprise/IEDMProxy;

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->notifyUserKeystoreUnlocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :cond_0
    :goto_0
    return-void

    .line 1269
    :catch_0
    move-exception v0

    .line 1270
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abort(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 879
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->abort(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 882
    const/4 v1, 0x4

    return v1
.end method

.method public addAuthToken([B)I
    .locals 3
    .param p1, "authToken"    # [B

    .prologue
    .line 910
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->addAuthToken([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 911
    :catch_0
    move-exception v0

    .line 912
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    const/4 v1, 0x4

    return v1
.end method

.method public addRngEntropy([B)Z
    .locals 4
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 739
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->addRngEntropy([B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 742
    return v2
.end method

.method public attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "outChain"    # Landroid/security/keymaster/KeymasterCertificateChain;

    .prologue
    .line 1063
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->attestKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;Landroid/security/keymaster/KeymasterCertificateChain;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1064
    :catch_0
    move-exception v0

    .line 1065
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1066
    const/4 v1, 0x4

    return v1
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B

    .prologue
    .line 851
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "purpose"    # I
    .param p3, "pruneable"    # Z
    .param p4, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p5, "entropy"    # [B
    .param p6, "uid"    # I

    .prologue
    .line 842
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-direct {p0}, Landroid/security/KeyStore;->getToken()Landroid/os/IBinder;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/security/IKeystoreService;->begin(Landroid/os/IBinder;Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 843
    :catch_0
    move-exception v8

    .line 844
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public clearUid(I)Z
    .locals 12
    .param p1, "uid"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 703
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Landroid/security/IKeystoreService;->clear_uid(J)I

    move-result v9

    .line 705
    .local v9, "ret":I
    invoke-direct {p0, p1}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v8

    .line 706
    .local v8, "keyStoreString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 707
    if-ne v9, v10, :cond_1

    .line 708
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 709
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Clearing credentials succeeded. Keystore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 708
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 718
    :cond_0
    :goto_0
    if-ne v9, v10, :cond_3

    move v0, v10

    :goto_1
    return v0

    .line 712
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 713
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Clearing credentials failed. Keystore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 712
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 719
    .end local v8    # "keyStoreString":Ljava/lang/String;
    .end local v9    # "ret":I
    :catch_0
    move-exception v7

    .line 720
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 722
    invoke-direct {p0, p1}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v8

    .line 723
    .restart local v8    # "keyStoreString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 724
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 725
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Clearing credentials failed. Keystore : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1, v10}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    move v0, v10

    move v1, v10

    move v2, v11

    .line 724
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 729
    :cond_2
    return v11

    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v9    # "ret":I
    :cond_3
    move v0, v11

    .line 718
    goto :goto_1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 470
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 462
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->exist(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    return v2
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;I)Z
    .locals 19
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 378
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v16

    .line 379
    .local v16, "isAuditLogEnabledAsUser":Z
    const-string/jumbo v17, ""

    .line 380
    .local v17, "logDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 381
    const-string/jumbo v3, " (Keystore=%s, key=%s, uid=%s, requested by %s)"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 382
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-direct/range {p0 .. p0}, Landroid/security/KeyStore;->getRequestorInfo()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 381
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 386
    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v11, "certList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual/range {p0 .. p2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v10

    .line 389
    .local v10, "cert":[B
    if-eqz v10, :cond_1

    .line 390
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v11

    .line 395
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v3, v0, v1}, Landroid/security/IKeystoreService;->del(Ljava/lang/String;I)I

    move-result v18

    .line 396
    .local v18, "ret":I
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 397
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 398
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key destruction activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " succeeded"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v9

    .line 398
    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 405
    :cond_2
    :goto_0
    if-eqz v16, :cond_3

    .line 406
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_7

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v3}, Landroid/security/KeyStore;->auditLogCertificateOrPrivateKeyInfo(Ljava/lang/String;ILjava/util/List;Z)V

    .line 410
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_8

    .line 411
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v12

    .line 412
    .local v12, "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "certificate$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    .line 414
    .local v13, "certificate":Ljava/security/cert/X509Certificate;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->getUserId(I)I

    move-result v4

    .line 413
    invoke-virtual {v12, v3, v4}, Landroid/sec/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 420
    .end local v12    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .end local v13    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v14    # "certificate$iterator":Ljava/util/Iterator;
    .end local v18    # "ret":I
    :catch_0
    move-exception v15

    .line 421
    .local v15, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyStore"

    const-string/jumbo v4, "Cannot connect to keystore"

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 423
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key destruction activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cannot connect to keystore"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v9

    .line 423
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 426
    :cond_4
    if-eqz v16, :cond_5

    .line 427
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v3}, Landroid/security/KeyStore;->auditLogCertificateOrPrivateKeyInfo(Ljava/lang/String;ILjava/util/List;Z)V

    .line 429
    :cond_5
    const/4 v3, 0x0

    return v3

    .line 401
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v18    # "ret":I
    :cond_6
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    .line 402
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Key destruction activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v3}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v9

    .line 401
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 406
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 419
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_9

    const/4 v3, 0x7

    move/from16 v0, v18

    if-ne v0, v3, :cond_a

    :cond_9
    const/4 v3, 0x1

    :goto_3
    return v3

    :cond_a
    const/4 v3, 0x0

    goto :goto_3
.end method

.method public duplicate(Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 4
    .param p1, "srcKey"    # Ljava/lang/String;
    .param p2, "srcUid"    # I
    .param p3, "destKey"    # Ljava/lang/String;
    .param p4, "destUid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 680
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->duplicate(Ljava/lang/String;ILjava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    return v2
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;)Landroid/security/keymaster/ExportResult;
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;

    .prologue
    .line 836
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;

    move-result-object v0

    return-object v0
.end method

.method public exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p5, "uid"    # I

    .prologue
    .line 828
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->exportKey(Ljava/lang/String;ILandroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;I)Landroid/security/keymaster/ExportResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 829
    :catch_0
    move-exception v6

    .line 830
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const/4 v0, 0x0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B

    .prologue
    .line 874
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/security/KeyStore;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "signature"    # [B
    .param p4, "entropy"    # [B

    .prologue
    .line 866
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->finish(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 869
    const/4 v1, 0x0

    return-object v1
.end method

.method public generate(Ljava/lang/String;IIII[[B)Z
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keyType"    # I
    .param p4, "keySize"    # I
    .param p5, "flags"    # I
    .param p6, "args"    # [[B

    .prologue
    .line 569
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    .line 570
    new-instance v6, Landroid/security/KeystoreArguments;

    invoke-direct {v6, p6}, Landroid/security/KeystoreArguments;-><init>([[B)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 569
    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generate(Ljava/lang/String;IIIILandroid/security/KeystoreArguments;)I

    move-result v8

    .line 571
    .local v8, "ret":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 573
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key generation failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 572
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :cond_0
    const/4 v0, 0x1

    if-ne v8, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 576
    .end local v8    # "ret":I
    :catch_0
    move-exception v7

    .line 577
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 578
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 580
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Key generation failed cannot connect to KeyStore"

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 579
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 582
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 9
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "uid"    # I
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 749
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/security/IKeystoreService;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v8

    .line 750
    .local v8, "ret":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 752
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key generation failed with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 751
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 754
    :cond_0
    return v8

    .line 755
    .end local v8    # "ret":I
    :catch_0
    move-exception v7

    .line 756
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 757
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 759
    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Key generation failed cannot connect to KeyStore"

    const/4 v0, 0x1

    invoke-direct {p0, p4, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 758
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 761
    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method public generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "entropy"    # [B
    .param p4, "flags"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 767
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 296
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;I)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 288
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->get(Ljava/lang/String;I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInvalidKeyException(Ljava/lang/String;II)Ljava/security/InvalidKeyException;
    .locals 1
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 1189
    invoke-static {p3}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/security/KeyStore;->getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidKeyException(Ljava/lang/String;ILandroid/security/KeyStoreException;)Ljava/security/InvalidKeyException;
    .locals 12
    .param p1, "keystoreKeyAlias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "e"    # Landroid/security/KeyStoreException;

    .prologue
    .line 1119
    invoke-virtual {p3}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1168
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Keystore operation failed"

    invoke-direct {v0, v1, p3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 1121
    :sswitch_0
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    .line 1123
    :sswitch_1
    new-instance v0, Landroid/security/keystore/KeyExpiredException;

    invoke-direct {v0}, Landroid/security/keystore/KeyExpiredException;-><init>()V

    return-object v0

    .line 1125
    :sswitch_2
    new-instance v0, Landroid/security/keystore/KeyNotYetValidException;

    invoke-direct {v0}, Landroid/security/keystore/KeyNotYetValidException;-><init>()V

    return-object v0

    .line 1134
    :sswitch_3
    new-instance v5, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v5}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    .line 1136
    .local v5, "keyCharacteristics":Landroid/security/keymaster/KeyCharacteristics;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v8

    .line 1138
    .local v8, "getKeyCharacteristicsErrorCode":I
    const/4 v0, 0x1

    if-eq v8, v0, :cond_0

    .line 1139
    new-instance v0, Ljava/security/InvalidKeyException;

    .line 1140
    const-string/jumbo v1, "Failed to obtained key characteristics"

    .line 1141
    invoke-static {v8}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v2

    .line 1139
    invoke-direct {v0, v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 1144
    :cond_0
    const v0, -0x5ffffe0a

    invoke-virtual {v5, v0}, Landroid/security/keymaster/KeyCharacteristics;->getUnsignedLongs(I)Ljava/util/List;

    move-result-object v9

    .line 1145
    .local v9, "keySids":Ljava/util/List;, "Ljava/util/List<Ljava/math/BigInteger;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1147
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    .line 1149
    :cond_1
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v10

    .line 1150
    .local v10, "rootSid":J
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_2

    invoke-static {v10, v11}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1153
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    .line 1156
    :cond_2
    invoke-direct {p0}, Landroid/security/KeyStore;->getFingerprintOnlySid()J

    move-result-wide v6

    .line 1157
    .local v6, "fingerprintOnlySid":J
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-eqz v0, :cond_3

    .line 1158
    invoke-static {v6, v7}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1157
    if-eqz v0, :cond_3

    .line 1161
    new-instance v0, Landroid/security/keystore/UserNotAuthenticatedException;

    invoke-direct {v0}, Landroid/security/keystore/UserNotAuthenticatedException;-><init>()V

    return-object v0

    .line 1165
    :cond_3
    new-instance v0, Landroid/security/keystore/KeyPermanentlyInvalidatedException;

    invoke-direct {v0}, Landroid/security/keystore/KeyPermanentlyInvalidatedException;-><init>()V

    return-object v0

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1a -> :sswitch_3
        -0x19 -> :sswitch_1
        -0x18 -> :sswitch_2
        0x2 -> :sswitch_0
        0xf -> :sswitch_3
    .end sparse-switch
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "uid"    # I
    .param p5, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 773
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/security/IKeystoreService;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 774
    :catch_0
    move-exception v6

    .line 775
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    const/4 v0, 0x4

    return v0
.end method

.method public getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeyCharacteristics;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "clientId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p3, "appId"    # Landroid/security/keymaster/KeymasterBlob;
    .param p4, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 782
    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public getmtime(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 675
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getmtime(Ljava/lang/String;I)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const-wide/16 v6, -0x1

    .line 662
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->getmtime(Ljava/lang/String;I)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 663
    .local v2, "millis":J
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 664
    return-wide v6

    .line 667
    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v2

    return-wide v4

    .line 668
    .end local v2    # "millis":J
    :catch_0
    move-exception v0

    .line 669
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v4, "Cannot connect to keystore"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    return-wide v6
.end method

.method public grant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->grant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 641
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    return v2
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 12
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "uid"    # I
    .param p6, "flags"    # I
    .param p7, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 787
    const-string/jumbo v10, ""

    .line 788
    .local v10, "logDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 789
    const-string/jumbo v1, " (Keystore=%s, alias=%s, uid=%s, requested by %s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 790
    move/from16 v0, p5

    invoke-direct {p0, v0}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {p0}, Landroid/security/KeyStore;->getRequestorInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 789
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 793
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/security/IKeystoreService;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v11

    .line 795
    .local v11, "ret":I
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    const/4 v1, 0x1

    if-ne v11, v1, :cond_2

    .line 798
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 799
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key importing activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " succeeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v7

    .line 797
    const/4 v1, 0x5

    const/4 v2, 0x1

    .line 798
    const/4 v3, 0x1

    .line 797
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 807
    :cond_1
    :goto_0
    return v11

    .line 802
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key importing activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 804
    const/4 v1, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v7

    .line 801
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 802
    const/4 v3, 0x0

    .line 801
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    .end local v11    # "ret":I
    :catch_0
    move-exception v9

    .line 809
    .local v9, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 812
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Key importing activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " cannot connect to keystore"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 814
    const/4 v1, 0x1

    move/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v7

    .line 811
    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 812
    const/4 v3, 0x0

    .line 811
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 816
    :cond_3
    const/4 v1, 0x4

    return v1
.end method

.method public importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BILandroid/security/keymaster/KeyCharacteristics;)I
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "format"    # I
    .param p4, "keyData"    # [B
    .param p5, "flags"    # I
    .param p6, "outCharacteristics"    # Landroid/security/keymaster/KeyCharacteristics;

    .prologue
    .line 822
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v0

    return v0
.end method

.method public importKey(Ljava/lang/String;[BII)Z
    .locals 10
    .param p1, "keyName"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 587
    const-string/jumbo v8, ""

    .line 588
    .local v8, "logDetails":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    const-string/jumbo v0, " (Keystore=%s, keyName=%s, uid=%s, requested by %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 590
    invoke-direct {p0, p3}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {p0}, Landroid/security/KeyStore;->getRequestorInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 589
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 594
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/security/IKeystoreService;->import_key(Ljava/lang/String;[BII)I

    move-result v9

    .line 595
    .local v9, "ret":I
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    const/4 v0, 0x1

    if-ne v9, v0, :cond_2

    .line 598
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key importing activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " succeeded"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 597
    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 598
    const/4 v2, 0x1

    .line 597
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 607
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne v9, v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 602
    :cond_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key importing activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 604
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 601
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 602
    const/4 v2, 0x0

    .line 601
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    .end local v9    # "ret":I
    :catch_0
    move-exception v7

    .line 609
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "KeyStore"

    const-string/jumbo v1, "Cannot connect to keystore"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 612
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key importing activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cannot connect to keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 614
    const/4 v0, 0x1

    invoke-direct {p0, p3, v0}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v6

    .line 611
    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 612
    const/4 v2, 0x0

    .line 611
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 616
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 607
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v9    # "ret":I
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public insert(Ljava/lang/String;[BII)I
    .locals 19
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    .line 307
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v18

    .line 308
    .local v18, "userId":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v16

    .line 310
    .local v16, "keyStoreString":Ljava/lang/String;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;

    move-result-object v13

    .line 311
    .local v13, "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v13, v0, v4, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser([BZI)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser([BI)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    .line 313
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static/range {v18 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 314
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v14

    .line 315
    .local v14, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "certInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 316
    .local v11, "certInfo":Ljava/security/cert/X509Certificate;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed. Keystore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    const-string/jumbo v5, ", Alias : "

    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 318
    const-string/jumbo v5, ", Subject : "

    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 319
    if-nez v11, :cond_1

    const-string/jumbo v4, "Not available"

    .line 317
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 319
    const-string/jumbo v5, ", Issuer : "

    .line 317
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 320
    if-nez v11, :cond_2

    const-string/jumbo v4, "Not available"

    .line 317
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 320
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v10

    .line 316
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certInfo$iterator":Ljava/util/Iterator;
    .end local v13    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .end local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v16    # "keyStoreString":Ljava/lang/String;
    .end local v18    # "userId":I
    :catch_0
    move-exception v15

    .line 358
    .local v15, "e":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->getKeystoreString(I)Ljava/lang/String;

    move-result-object v16

    .line 359
    .restart local v16    # "keyStoreString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 360
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v14

    .line 361
    .restart local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "certInfo$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 362
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 363
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed. Keystore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    const-string/jumbo v5, ", Alias : "

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 364
    const-string/jumbo v5, ", Subject : "

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 365
    if-nez v11, :cond_b

    const-string/jumbo v4, "Not available"

    .line 363
    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 365
    const-string/jumbo v5, ", Issuer : "

    .line 363
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 366
    if-nez v11, :cond_c

    const-string/jumbo v4, "Not available"

    .line 363
    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 366
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v10

    .line 362
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_3

    .line 319
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v13    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v18    # "userId":I
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    goto/16 :goto_1

    .line 320
    :cond_2
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    goto/16 :goto_2

    .line 323
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certInfo$iterator":Ljava/util/Iterator;
    .end local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_3
    const-string/jumbo v4, "KeyStore"

    const-string/jumbo v5, "Put not allowed. Untrusted certificate."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v4, 0x6

    return v4

    .line 327
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-interface {v4, v0, v1, v2, v3}, Landroid/security/IKeystoreService;->insert(Ljava/lang/String;[BII)I

    move-result v17

    .line 329
    .local v17, "ret":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static/range {v18 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->isAuditLogEnabledAsUser(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 330
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/security/KeyStore;->convertFromPem([B)Ljava/util/List;

    move-result-object v14

    .line 331
    .restart local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v4, 0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_7

    .line 332
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "certInfo$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 333
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 334
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " succeeded. Keystore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    const-string/jumbo v5, ", Alias : "

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 335
    const-string/jumbo v5, ", Subject : "

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 336
    if-nez v11, :cond_5

    const-string/jumbo v4, "Not available"

    .line 334
    :goto_7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 336
    const-string/jumbo v5, ", Issuer : "

    .line 334
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 337
    if-nez v11, :cond_6

    const-string/jumbo v4, "Not available"

    .line 334
    :goto_8
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 337
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v10

    .line 333
    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 336
    :cond_5
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    goto :goto_7

    .line 337
    :cond_6
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    goto :goto_8

    .line 340
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certInfo$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "certInfo$iterator":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 341
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 342
    invoke-virtual/range {p0 .. p0}, Landroid/security/KeyStore;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p1}, Landroid/security/KeyStore;->getKeyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed. Keystore : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    const-string/jumbo v5, ", Alias : "

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 343
    const-string/jumbo v5, ", Subject : "

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 344
    if-nez v11, :cond_8

    const-string/jumbo v4, "Not available"

    .line 342
    :goto_a
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 344
    const-string/jumbo v5, ", Issuer : "

    .line 342
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 345
    if-nez v11, :cond_9

    const-string/jumbo v4, "Not available"

    .line 342
    :goto_b
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 345
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1, v4}, Landroid/security/KeyStore;->getUserId(IZ)I

    move-result v10

    .line 341
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_9

    .line 344
    :cond_8
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    goto :goto_a

    .line 345
    :cond_9
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_b

    .line 349
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certInfo$iterator":Ljava/util/Iterator;
    .end local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_a
    return v17

    .line 365
    .end local v13    # "certPolicy":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .end local v17    # "ret":I
    .end local v18    # "userId":I
    .restart local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .restart local v12    # "certInfo$iterator":Ljava/util/Iterator;
    .restart local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v15    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    goto/16 :goto_4

    .line 366
    :cond_c
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    goto/16 :goto_5

    .line 371
    .end local v11    # "certInfo":Ljava/security/cert/X509Certificate;
    .end local v12    # "certInfo$iterator":Ljava/util/Iterator;
    .end local v14    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_d
    const-string/jumbo v4, "KeyStore"

    const-string/jumbo v5, "Cannot connect to keystore"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 372
    const/4 v4, 0x4

    return v4
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 563
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v0

    return v0
.end method

.method public isEmpty(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 555
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->isEmpty(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 558
    return v1
.end method

.method public isEmptyForSystemCredential()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 1280
    const-string/jumbo v4, "KeyStore"

    const-string/jumbo v6, "isEmptyForSystemCredential"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pi$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1282
    .local v1, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1283
    :cond_1
    sget-object v6, Landroid/security/KeyStore;->SYSTEM_CREDENTIAL_UIDS:[I

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_0

    aget v3, v6, v4

    .line 1284
    .local v3, "uid":I
    const-string/jumbo v8, ""

    iget v9, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 1285
    .local v0, "aliases":[Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v8, v0

    if-lez v8, :cond_2

    .line 1286
    const-string/jumbo v4, "KeyStore"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isEmptyForSystemCredential : ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    return v5

    .line 1283
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1291
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v3    # "uid":I
    :cond_3
    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Landroid/security/KeyStore;->isEmpty(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1292
    return v5

    .line 1296
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method public isHardwareBacked()Z
    .locals 1

    .prologue
    .line 689
    const-string/jumbo v0, "RSA"

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->isHardwareBacked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isHardwareBacked(Ljava/lang/String;)Z
    .locals 5
    .param p1, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 694
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/security/IKeystoreService;->is_hardware_backed(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    .line 696
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 697
    return v2
.end method

.method public isOperationAuthorized(Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->isOperationAuthorized(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 897
    const/4 v1, 0x0

    return v1
.end method

.method public isUnlocked()Z
    .locals 2

    .prologue
    .line 283
    invoke-virtual {p0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public list(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 486
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->list(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 481
    const/4 v1, 0x0

    return-object v1
.end method

.method public lock()Z
    .locals 1

    .prologue
    .line 514
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->lock(I)Z

    move-result v0

    return v0
.end method

.method public lock(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 506
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    return v2
.end method

.method public migrateMDFPPKeystore(ILjava/lang/String;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "isFingerprint"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 984
    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v4, p2, p1, v1}, Landroid/security/IKeystoreService;->migrate_MDFPP_keystore(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 985
    sget-object v1, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    return v2

    :cond_0
    move v1, v3

    .line 984
    goto :goto_0

    .line 989
    :cond_1
    return v3

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 993
    new-instance v1, Ljava/lang/AssertionError;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(I)V

    throw v1
.end method

.method public onUserAdded(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 959
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/security/KeyStore;->onUserAdded(II)V

    .line 958
    return-void
.end method

.method public onUserAdded(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 947
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_0
    return-void

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUserAddedMDFPP(II)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "parentId"    # I

    .prologue
    .line 1049
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->onUserAdded_MDFPP(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1047
    :goto_0
    return-void

    .line 1050
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onUserPasswordChanged(ILjava/lang/String;)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "newPassword"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 926
    if-nez p2, :cond_0

    .line 927
    const-string/jumbo p2, ""

    .line 930
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->onUserPasswordChanged(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 933
    return v2
.end method

.method public onUserPasswordChanged(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 1057
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onUserRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 969
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->onUserRemoved(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    :goto_0
    return-void

    .line 970
    :catch_0
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public put(Ljava/lang/String;[BII)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "uid"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 300
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 491
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3}, Landroid/security/IKeystoreService;->reset()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    return v2
.end method

.method public resetMDFPP(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1034
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1}, Landroid/security/IKeystoreService;->reset_MDFPP(I)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1035
    sget-object v1, Landroid/security/KeyStore;->mNeedToCheckOldKeyStore:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    return v5

    .line 1039
    :cond_0
    return v4

    .line 1041
    :catch_0
    move-exception v0

    .line 1042
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1043
    return v4
.end method

.method public sign(Ljava/lang/String;[B)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 622
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2}, Landroid/security/IKeystoreService;->sign(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    const/4 v1, 0x0

    return-object v1
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 1

    .prologue
    .line 279
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/security/KeyStore;->state(I)Landroid/security/KeyStore$State;

    move-result-object v0

    return-object v0
.end method

.method public state(I)Landroid/security/KeyStore$State;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 264
    :try_start_0
    iget-object v2, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->getState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 274
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 265
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 271
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    return-object v2

    .line 272
    :pswitch_1
    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    return-object v2

    .line 273
    :pswitch_2
    sget-object v2, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    return-object v2

    .line 270
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ungrant(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 649
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2}, Landroid/security/IKeystoreService;->ungrant(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    .line 651
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 652
    return v2
.end method

.method public unlock(ILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 530
    :try_start_0
    iget-object v4, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->unlock(ILjava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/security/KeyStore;->mError:I

    .line 531
    iget v4, p0, Landroid/security/KeyStore;->mError:I

    if-ne v4, v2, :cond_1

    const/4 v1, 0x1

    .line 534
    .local v1, "ret":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {p0, v4}, Landroid/security/KeyStore;->refreshRollbackUserKeystore(I)V

    .line 539
    :cond_0
    iget v4, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_2

    :goto_1
    return v2

    .line 531
    .end local v1    # "ret":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "ret":Z
    goto :goto_0

    :cond_2
    move v2, v3

    .line 539
    goto :goto_1

    .line 540
    .end local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "KeyStore"

    const-string/jumbo v4, "Cannot connect to keystore"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 542
    return v3
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 547
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "arguments"    # Landroid/security/keymaster/KeymasterArguments;
    .param p3, "input"    # [B

    .prologue
    .line 856
    :try_start_0
    iget-object v1, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v1, p1, p2, p3}, Landroid/security/IKeystoreService;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 857
    :catch_0
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v2, "Cannot connect to keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 859
    const/4 v1, 0x0

    return-object v1
.end method

.method public verify(Ljava/lang/String;[B[B)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "signature"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 631
    :try_start_0
    iget-object v3, p0, Landroid/security/KeyStore;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/IKeystoreService;->verify(Ljava/lang/String;[B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyStore"

    const-string/jumbo v3, "Cannot connect to keystore"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 634
    return v2
.end method
