.class public Landroid/net/wifi/WifiEnterpriseConfig;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiEnterpriseConfig$1;,
        Landroid/net/wifi/WifiEnterpriseConfig$Eap;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase1;,
        Landroid/net/wifi/WifiEnterpriseConfig$Phase2;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;,
        Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;
    }
.end annotation


# static fields
.field public static final ALTSUBJECT_MATCH_KEY:Ljava/lang/String; = "altsubject_match"

.field public static final ANON_IDENTITY_KEY:Ljava/lang/String; = "anonymous_identity"

.field public static final CA_CERT_ALIAS_DELIMITER:Ljava/lang/String; = " "

.field public static final CA_CERT_KEY:Ljava/lang/String; = "ca_cert"

.field public static final CA_CERT_PREFIX:Ljava/lang/String; = "keystore://CACERT_"

.field public static final CA_PATH_KEY:Ljava/lang/String; = "ca_path"

.field public static final CLIENT_CERT_KEY:Ljava/lang/String; = "client_cert"

.field public static final CLIENT_CERT_PREFIX:Ljava/lang/String; = "keystore://USRCERT_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiEnterpriseConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z

.field public static final DISABLE_TLS_1_2:Ljava/lang/String; = "\"tls_disable_tlsv1_2=1\""

.field public static final DOM_SUFFIX_MATCH_KEY:Ljava/lang/String; = "domain_suffix_match"

.field public static final EAP_KEY:Ljava/lang/String; = "eap"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final EMPTY_VALUE:Ljava/lang/String; = "NULL"

.field public static final ENABLE_TLS_1_2:Ljava/lang/String; = "\"tls_disable_tlsv1_2=0\""

.field public static final ENGINE_DISABLE:Ljava/lang/String; = "0"

.field public static final ENGINE_ENABLE:Ljava/lang/String; = "1"

.field public static final ENGINE_ID_KEY:Ljava/lang/String; = "engine_id"

.field public static final ENGINE_ID_KEYSTORE:Ljava/lang/String; = "keystore"

.field public static final ENGINE_ID_SECPKCS11:Ljava/lang/String; = "secpkcs11"

.field public static final ENGINE_ID_UCMENGINE:Ljava/lang/String; = "ucsengine"

.field public static final ENGINE_KEY:Ljava/lang/String; = "engine"

.field public static final IDENTITY_KEY:Ljava/lang/String; = "identity"

.field public static final KEYSTORES_URI:Ljava/lang/String; = "keystores://"

.field public static final KEYSTORE_URI:Ljava/lang/String; = "keystore://"

.field public static final OPP_KEY_CACHING:Ljava/lang/String; = "proactive_key_caching"

.field public static final PAC_FILE:Ljava/lang/String; = "pac_file"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "password"

.field public static final PHASE1_KEY:Ljava/lang/String; = "phase1"

.field public static final PHASE2_KEY:Ljava/lang/String; = "phase2"

.field public static final PLMN_KEY:Ljava/lang/String; = "plmn"

.field public static final PRIVATE_KEY_ID_KEY:Ljava/lang/String; = "key_id"

.field public static final REALM_KEY:Ljava/lang/String; = "realm"

.field public static final SUBJECT_MATCH_KEY:Ljava/lang/String; = "subject_match"

.field private static final SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WifiEnterpriseConfig"

.field private static final WAPIAS_CERT_PREFIX:Ljava/lang/String; = "keystore://WAPIAS_"

.field private static final WAPIUSER_CERT_PREFIX:Ljava/lang/String; = "keystore://WAPIUSR_"

.field public static final WAPI_AS_KEY:Ljava/lang/String; = "wapi_as_cert"

.field public static final WAPI_USER_KEY:Ljava/lang/String; = "wapi_user_cert"


# instance fields
.field private mCaCerts:[Ljava/security/cert/X509Certificate;

.field private mClientCertificate:Ljava/security/cert/X509Certificate;

.field private mClientPrivateKey:Ljava/security/PrivateKey;

.field private mEapMethod:I

.field private mFields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCCMEnabled:Z

.field private mIsUCMEnabled:Z

.field private mPhase2Method:I

.field private mTls12Enable:Z

.field private mwapiASCert:Ljava/security/cert/X509Certificate;

.field private mwapiUserCert:Ljava/security/cert/X509Certificate;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiEnterpriseConfig;[Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set2(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/PrivateKey;)Ljava/security/PrivateKey;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object p1
.end method

.method static synthetic -set3(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return p1
.end method

.method static synthetic -set4(Landroid/net/wifi/WifiEnterpriseConfig;I)I
    .locals 0

    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return p1
.end method

.method static synthetic -set5(Landroid/net/wifi/WifiEnterpriseConfig;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    return p1
.end method

.method static synthetic -set6(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiASCert:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic -set7(Landroid/net/wifi/WifiEnterpriseConfig;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiUserCert:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/wifi/WifiEnterpriseConfig;->DBG:Z

    .line 158
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 159
    const-string/jumbo v1, "phase1"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 160
    const-string/jumbo v1, "pac_file"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 161
    const-string/jumbo v1, "identity"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "anonymous_identity"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 163
    const-string/jumbo v1, "password"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 164
    const-string/jumbo v1, "client_cert"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 165
    const-string/jumbo v1, "ca_cert"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 166
    const-string/jumbo v1, "subject_match"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 167
    const-string/jumbo v1, "engine"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 168
    const-string/jumbo v1, "engine_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 169
    const-string/jumbo v1, "key_id"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 170
    const-string/jumbo v1, "altsubject_match"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 171
    const-string/jumbo v1, "domain_suffix_match"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 172
    const-string/jumbo v1, "ca_path"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 173
    const-string/jumbo v1, "wapi_as_cert"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 174
    const-string/jumbo v1, "wapi_user_cert"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 158
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    .line 291
    new-instance v0, Landroid/net/wifi/WifiEnterpriseConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiEnterpriseConfig$1;-><init>()V

    .line 290
    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    .line 187
    iput-boolean v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsCCMEnabled:Z

    .line 188
    iput-boolean v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsUCMEnabled:Z

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 193
    iput v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiEnterpriseConfig;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    .line 180
    iput-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    .line 187
    iput-boolean v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsCCMEnabled:Z

    .line 188
    iput-boolean v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsUCMEnabled:Z

    .line 192
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 193
    iput v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 205
    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v2, "engine_id"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const-string/jumbo v3, "secpkcs11"

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    iput-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsCCMEnabled:Z

    .line 217
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_1
    const-string/jumbo v3, "ucsengine"

    iget-object v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    iput-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsUCMEnabled:Z

    goto :goto_1

    .line 219
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 220
    iget v2, p1, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    iput v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 204
    return-void
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    .line 764
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 765
    .local v0, "data":[B
    const/4 v2, 0x0

    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "position":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 766
    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 765
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 769
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v0, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 770
    :catch_0
    move-exception v1

    .line 771
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 772
    return-object p0
.end method

.method public static encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 751
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 752
    .local v0, "bytes":[B
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 753
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-byte v1, v0, v3

    .line 754
    .local v1, "o":B
    const-string/jumbo v6, "%02x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    and-int/lit16 v8, v1, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 753
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 756
    .end local v1    # "o":B
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p1, "arr"    # [Ljava/lang/String;
    .param p2, "toBeFound"    # Ljava/lang/String;
    .param p3, "defaultIndex"    # I

    .prologue
    .line 1322
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p3

    .line 1323
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1324
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 1323
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1326
    :cond_2
    return p3
.end method

.method private isEapMethodValid()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1417
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1418
    const-string/jumbo v0, "WifiEnterpriseConfig"

    const-string/jumbo v1, "WiFi enterprise configuration is invalid as it supplies no EAP method."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    return v3

    .line 1421
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 1422
    :cond_1
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEapMethod is invald for WiFi enterprise configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    return v3

    .line 1425
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ltz v0, :cond_3

    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_4

    .line 1426
    :cond_3
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mPhase2Method is invald for WiFi enterprise configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1427
    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 1426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    return v3

    .line 1430
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 1301
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ""

    return-object v1

    .line 1302
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1303
    .local v0, "length":I
    if-le v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1304
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1305
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1307
    :cond_1
    return-object p1
.end method

.method private writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v3, 0x0

    .line 277
    if-eqz p2, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 280
    .local v0, "certBytes":[B
    array-length v2, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0    # "certBytes":[B
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 286
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method private writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "cert"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 266
    if-eqz p2, :cond_0

    array-length v1, p2

    if-eqz v1, :cond_0

    .line 267
    array-length v1, p2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 269
    aget-object v1, p2, v0

    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method public getAltSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1221
    const-string/jumbo v0, "altsubject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymousIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 725
    const-string/jumbo v0, "anonymous_identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificate()Ljava/security/cert/X509Certificate;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 930
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 931
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    aget-object v0, v0, v1

    return-object v0

    .line 933
    :cond_0
    return-object v2
.end method

.method public getCaCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 824
    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCaCertificateAliases()[Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 833
    const-string/jumbo v5, "ca_cert"

    const-string/jumbo v6, ""

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 834
    .local v2, "value":Ljava/lang/String;
    const-string/jumbo v5, "keystore://CACERT_"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 836
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "ca_cert"

    const-string/jumbo v6, "keystore://CACERT_"

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    return-object v4

    .line 837
    :cond_0
    const-string/jumbo v5, "keystores://"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 838
    const-string/jumbo v5, "keystores://"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 840
    .local v3, "values":Ljava/lang/String;
    const-string/jumbo v5, " "

    invoke-static {v3, v5}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "aliases":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 842
    aget-object v5, v0, v1

    invoke-static {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->decodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 843
    aget-object v5, v0, v1

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 844
    aget-object v5, v0, v1

    const-string/jumbo v6, "CACERT_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 841
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 847
    :cond_2
    array-length v5, v0

    if-eqz v5, :cond_3

    .end local v0    # "aliases":[Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0    # "aliases":[Ljava/lang/String;
    :cond_3
    move-object v0, v4

    goto :goto_1

    .line 849
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "values":Ljava/lang/String;
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_2
    return-object v4

    :cond_5
    new-array v4, v8, [Ljava/lang/String;

    aput-object v2, v4, v7

    goto :goto_2
.end method

.method public getCaCertificates()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 970
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 971
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    return-object v0

    .line 973
    :cond_0
    return-object v1
.end method

.method public getCaPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1041
    const-string/jumbo v0, "ca_path"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getClientCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1091
    const-string/jumbo v0, "client_cert"

    const-string/jumbo v1, "keystore://USRCERT_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public getDomainSuffixMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1251
    const-string/jumbo v0, "domain_suffix_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEapMethod()I
    .locals 1

    .prologue
    .line 614
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    return v0
.end method

.method public getEngineId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1131
    const-string/jumbo v0, "engine_id"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1339
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1341
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1

    .line 1343
    :cond_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1344
    invoke-virtual {v0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1345
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1347
    :cond_2
    return-object v0
.end method

.method public getFields()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 708
    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;
    .locals 3
    .param p1, "current"    # Landroid/net/wifi/WifiEnterpriseConfig;

    .prologue
    const/4 v2, 0x0

    .line 1291
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1292
    if-eqz p1, :cond_0

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "NULL"

    goto :goto_0

    .line 1294
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1295
    const-string/jumbo v0, "NULL"

    return-object v0

    .line 1297
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPacFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 692
    const-string/jumbo v0, "pac_file"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 743
    const-string/jumbo v0, "password"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase1Method()Ljava/lang/String;
    .locals 2

    .prologue
    .line 643
    const-string/jumbo v0, "phase1"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhase2Method()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    return v0
.end method

.method public getPlmn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1285
    const-string/jumbo v0, "plmn"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1268
    const-string/jumbo v0, "realm"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectMatch()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1203
    const-string/jumbo v0, "subject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTls12Enable()Z
    .locals 1

    .prologue
    .line 605
    iget-boolean v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    return v0
.end method

.method public getWapiASCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 874
    const-string/jumbo v0, "wapi_as_cert"

    const-string/jumbo v1, "keystore://WAPIAS_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWapiAsCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiASCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getWapiUserCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiUserCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getWapiUserCertificateAlias()Ljava/lang/String;
    .locals 2

    .prologue
    .line 896
    const-string/jumbo v0, "wapi_user_cert"

    const-string/jumbo v1, "keystore://WAPIUSR_"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getFieldValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadFromSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;)V
    .locals 10
    .param p1, "loader"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;

    .prologue
    const/4 v5, 0x0

    .line 527
    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig;->SUPPLICANT_CONFIG_KEYS:[Ljava/lang/String;

    array-length v7, v6

    move v4, v5

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v1, v6, v4

    .line 528
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 529
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 530
    iget-object v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v9, "NULL"

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 532
    :cond_0
    iget-object v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 535
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "eap"

    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "eapMethod":Ljava/lang/String;
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    const/4 v6, -0x1

    invoke-direct {p0, v4, v0, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 538
    const-string/jumbo v4, "phase2"

    invoke-interface {p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantLoader;->loadValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "phase2Method":Ljava/lang/String;
    const-string/jumbo v4, "auth="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    const-string/jumbo v4, "auth="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 545
    :cond_2
    :goto_2
    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    invoke-direct {p0, v4, v2, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getStringIndex([Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 526
    return-void

    .line 542
    :cond_3
    const-string/jumbo v4, "autheap="

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 543
    const-string/jumbo v4, "autheap="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method public resetCaCertificate()V
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 980
    return-void
.end method

.method public resetClientKeyEntry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1176
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1177
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 1175
    return-void
.end method

.method public resetWapiAsCertificate()V
    .locals 1

    .prologue
    .line 998
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiASCert:Ljava/security/cert/X509Certificate;

    .line 997
    return-void
.end method

.method public resetWapiUserCertificate()V
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiUserCert:Ljava/security/cert/X509Certificate;

    .line 1013
    return-void
.end method

.method public saveToSupplicant(Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;)Z
    .locals 9
    .param p1, "saver"    # Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;

    .prologue
    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 492
    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodValid()Z

    move-result v5

    if-nez v5, :cond_0

    .line 493
    return v6

    .line 496
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 497
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {p1, v1, v5}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 498
    return v6

    .line 502
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, "eap"

    sget-object v7, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v8, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v7, v7, v8

    invoke-interface {p1, v5, v7}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 503
    return v6

    .line 506
    :cond_3
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-eq v5, v0, :cond_6

    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-eqz v5, :cond_6

    .line 507
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_4

    .line 508
    .local v0, "is_autheap":Z
    :goto_0
    if-eqz v0, :cond_5

    const-string/jumbo v3, "autheap="

    .line 509
    .local v3, "prefix":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "value":Ljava/lang/String;
    const-string/jumbo v5, "phase2"

    invoke-interface {p1, v5, v4}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5

    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_4
    move v0, v6

    .line 507
    goto :goto_0

    .line 508
    .restart local v0    # "is_autheap":Z
    :cond_5
    const-string/jumbo v3, "auth="

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_1

    .line 511
    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_6
    iget v5, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-nez v5, :cond_7

    .line 513
    const-string/jumbo v5, "phase2"

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig$SupplicantSaver;->saveValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5

    .line 515
    :cond_7
    const-string/jumbo v5, "WifiEnterpriseConfig"

    const-string/jumbo v7, "WiFi enterprise configuration is invalid as it supplies a phase 2 method but the phase1 method does not support it."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v6
.end method

.method public setAltSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "altSubjectMatch"    # Ljava/lang/String;

    .prologue
    .line 1213
    const-string/jumbo v0, "altsubject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    return-void
.end method

.method public setAnonymousIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "anonymousIdentity"    # Ljava/lang/String;

    .prologue
    .line 717
    const-string/jumbo v0, "anonymous_identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    return-void
.end method

.method public setCCMEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1100
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCCMEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1102
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsCCMEnabled:Z

    .line 1103
    if-nez p1, :cond_0

    .line 1104
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "keystore"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "secpkcs11"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 913
    if-eqz p1, :cond_1

    .line 914
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    if-ltz v0, :cond_0

    .line 915
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 912
    :goto_0
    return-void

    .line 917
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Not a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 920
    :cond_1
    iput-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_0
.end method

.method public setCaCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 786
    const-string/jumbo v0, "ca_cert"

    const-string/jumbo v1, "keystore://CACERT_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-void
.end method

.method public setCaCertificateAliases([Ljava/lang/String;)V
    .locals 6
    .param p1, "aliases"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 800
    if-nez p1, :cond_0

    .line 801
    const-string/jumbo v2, "ca_cert"

    const-string/jumbo v3, "keystore://CACERT_"

    invoke-virtual {p0, v2, v5, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :goto_0
    return-void

    .line 802
    :cond_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 804
    aget-object v2, p1, v4

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_3

    .line 809
    if-lez v0, :cond_2

    .line 810
    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->encodeCaCertificateAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 814
    :cond_3
    const-string/jumbo v2, "ca_cert"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keystores://"

    invoke-virtual {p0, v2, v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCaCertificates([Ljava/security/cert/X509Certificate;)V
    .locals 4
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 951
    if-eqz p1, :cond_2

    .line 952
    array-length v2, p1

    new-array v1, v2, [Ljava/security/cert/X509Certificate;

    .line 953
    .local v1, "newCerts":[Ljava/security/cert/X509Certificate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 954
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v2

    if-ltz v2, :cond_0

    .line 955
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    .line 953
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 957
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Not a CA certificate"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 960
    :cond_1
    iput-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    .line 950
    .end local v0    # "i":I
    .end local v1    # "newCerts":[Ljava/security/cert/X509Certificate;
    :goto_1
    return-void

    .line 962
    :cond_2
    iput-object v2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    goto :goto_1
.end method

.method public setCaPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1032
    const-string/jumbo v0, "ca_path"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    return-void
.end method

.method public setClientCertificateAlias(Ljava/lang/String;)V
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1056
    .local v0, "engine_id":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsCCMEnabled:Z

    .line 1055
    if-eqz v1, :cond_0

    .line 1057
    const-string/jumbo v1, "client_cert"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    const-string/jumbo v1, "key_id"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v0, "secpkcs11"

    .line 1072
    .local v0, "engine_id":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1073
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "engine"

    const-string/jumbo v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1074
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "engine_id"

    const-string/jumbo v3, "NULL"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    :goto_1
    return-void

    .line 1061
    .local v0, "engine_id":Ljava/lang/String;
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsUCMEnabled:Z

    .line 1060
    if-eqz v1, :cond_1

    .line 1062
    const-string/jumbo v1, "client_cert"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    const-string/jumbo v1, "key_id"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v0, "ucsengine"

    .local v0, "engine_id":Ljava/lang/String;
    goto :goto_0

    .line 1066
    .local v0, "engine_id":Ljava/lang/String;
    :cond_1
    const-string/jumbo v1, "client_cert"

    const-string/jumbo v2, "keystore://USRCERT_"

    invoke-virtual {p0, v1, p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    const-string/jumbo v1, "key_id"

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {p0, v1, p1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    const-string/jumbo v0, "keystore"

    .local v0, "engine_id":Ljava/lang/String;
    goto :goto_0

    .line 1076
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "engine"

    const-string/jumbo v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "engine_id"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public setClientKeyEntry(Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "clientCertificate"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 1147
    if-eqz p2, :cond_2

    .line 1148
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Cannot be a CA certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_0
    if-nez p1, :cond_1

    .line 1152
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Client cert without a private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_1
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 1155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key cannot be encoded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_2
    iput-object p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    .line 1160
    iput-object p2, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    .line 1146
    return-void
.end method

.method public setDomainSuffixMatch(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 1243
    const-string/jumbo v0, "domain_suffix_match"

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    return-void
.end method

.method public setEapMethod(I)V
    .locals 3
    .param p1, "eapMethod"    # I

    .prologue
    .line 562
    packed-switch p1, :pswitch_data_0

    .line 584
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown EAP method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 576
    :pswitch_2
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    .line 578
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "proactive_key_caching"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void

    .line 562
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1379
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1361
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "NULL"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    :goto_0
    return-void

    .line 1364
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setIdentity(Ljava/lang/String;)V
    .locals 2
    .param p1, "identity"    # Ljava/lang/String;

    .prologue
    .line 700
    const-string/jumbo v0, "identity"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method public setPacFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "pac_file"    # Ljava/lang/String;

    .prologue
    .line 687
    const-string/jumbo v0, "pac_file"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 733
    const-string/jumbo v0, "password"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public setPhase1Method(I)V
    .locals 4
    .param p1, "phase1Method"    # I

    .prologue
    .line 624
    packed-switch p1, :pswitch_data_0

    .line 637
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown Phase 1 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 626
    :pswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "phase1"

    const-string/jumbo v2, "NULL"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    :goto_0
    return-void

    .line 633
    :pswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "phase1"

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fast_provisioning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiEnterpriseConfig$Phase1;->strings:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 633
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setPhase2Method(I)V
    .locals 2
    .param p1, "phase2Method"    # I

    .prologue
    .line 656
    packed-switch p1, :pswitch_data_0

    .line 665
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown Phase 2 method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :pswitch_0
    iput p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    .line 655
    return-void

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPlmn(Ljava/lang/String;)V
    .locals 2
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1276
    const-string/jumbo v0, "plmn"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 2
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 1260
    const-string/jumbo v0, "realm"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    return-void
.end method

.method public setSubjectMatch(Ljava/lang/String;)V
    .locals 2
    .param p1, "subjectMatch"    # Ljava/lang/String;

    .prologue
    .line 1194
    const-string/jumbo v0, "subject_match"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    return-void
.end method

.method public setTls12Enable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 594
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    .line 595
    iget-object v1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v2, "phase1"

    .line 596
    if-eqz p1, :cond_0

    const-string/jumbo v0, "\"tls_disable_tlsv1_2=0\""

    .line 595
    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    return-void

    .line 596
    :cond_0
    const-string/jumbo v0, "\"tls_disable_tlsv1_2=1\""

    goto :goto_0
.end method

.method public setUCMEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1116
    const-string/jumbo v0, "WifiEnterpriseConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUCMEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iput-boolean p1, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsUCMEnabled:Z

    .line 1119
    if-nez p1, :cond_0

    .line 1120
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "keystore"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :goto_0
    return-void

    .line 1122
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    const-string/jumbo v1, "engine_id"

    const-string/jumbo v2, "ucsengine"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setWapiASCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 865
    const-string/jumbo v0, "wapi_as_cert"

    const-string/jumbo v1, "keystore://WAPIAS_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public setWapiUserCertificateAlias(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 887
    const-string/jumbo v0, "wapi_user_cert"

    const-string/jumbo v1, "keystore://WAPIUSR_"

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setFieldValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1388
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1389
    .local v4, "sb":Ljava/lang/StringBuffer;
    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    if-gez v7, :cond_3

    .line 1390
    :cond_0
    const-string/jumbo v7, "eap"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1393
    :goto_0
    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    if-ltz v7, :cond_1

    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    sget-object v8, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 1394
    :cond_1
    const-string/jumbo v7, "phase2"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1401
    :goto_1
    iget-object v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1403
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v7, "password"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v5, "<removed>"

    .line 1405
    .local v5, "value":Ljava/lang/String;
    :goto_3
    const-string/jumbo v7, "identity"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1406
    sget-boolean v7, Landroid/net/wifi/WifiEnterpriseConfig;->DBG:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "value":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1407
    .restart local v5    # "value":Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 1389
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "key$iterator":Ljava/util/Iterator;
    .end local v5    # "value":Ljava/lang/String;
    :cond_3
    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    sget-object v8, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v8, v8

    if-ge v7, v8, :cond_0

    .line 1392
    const-string/jumbo v7, "eap"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    iget v9, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 1396
    :cond_4
    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    const/4 v0, 0x1

    .line 1397
    .local v0, "is_autheap":Z
    :cond_5
    if-eqz v0, :cond_6

    const-string/jumbo v3, "autheap="

    .line 1398
    .local v3, "prefix":Ljava/lang/String;
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    iget v9, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1399
    .local v6, "value_phase2":Ljava/lang/String;
    const-string/jumbo v7, "phase2"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 1397
    .end local v3    # "prefix":Ljava/lang/String;
    .end local v6    # "value_phase2":Ljava/lang/String;
    :cond_6
    const-string/jumbo v3, "auth="

    .restart local v3    # "prefix":Ljava/lang/String;
    goto :goto_5

    .line 1403
    .end local v0    # "is_autheap":Z
    .end local v3    # "prefix":Ljava/lang/String;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "key$iterator":Ljava/util/Iterator;
    :cond_7
    iget-object v7, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .restart local v5    # "value":Ljava/lang/String;
    goto/16 :goto_3

    .line 1406
    :cond_8
    const-string/jumbo v5, "<removed>"

    goto/16 :goto_4

    .line 1409
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 230
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mFields:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 232
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 236
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mEapMethod:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mPhase2Method:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mCaCerts:[Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificates(Landroid/os/Parcel;[Ljava/security/cert/X509Certificate;)V

    .line 240
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientPrivateKey:Ljava/security/PrivateKey;

    invoke-interface {v4}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v3

    .line 243
    .local v3, "userKeyBytes":[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 245
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "userKeyBytes":[B
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mClientCertificate:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 251
    iget-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mTls12Enable:Z

    if-eqz v4, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiASCert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 256
    iget-object v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mwapiUserCert:Ljava/security/cert/X509Certificate;

    invoke-direct {p0, p1, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    .line 259
    iget-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsCCMEnabled:Z

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    iget-boolean v4, p0, Landroid/net/wifi/WifiEnterpriseConfig;->mIsUCMEnabled:Z

    if-eqz v4, :cond_4

    :goto_4
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    return-void

    .line 247
    :cond_1
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v4, v6

    .line 251
    goto :goto_2

    :cond_3
    move v4, v6

    .line 259
    goto :goto_3

    :cond_4
    move v5, v6

    .line 260
    goto :goto_4
.end method
