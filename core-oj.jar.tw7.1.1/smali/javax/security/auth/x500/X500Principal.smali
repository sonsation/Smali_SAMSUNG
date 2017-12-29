.class public final Ljavax/security/auth/x500/X500Principal;
.super Ljava/lang/Object;
.source "X500Principal.java"

# interfaces
.implements Ljava/security/Principal;
.implements Ljava/io/Serializable;


# static fields
.field public static final CANONICAL:Ljava/lang/String; = "CANONICAL"

.field public static final RFC1779:Ljava/lang/String; = "RFC1779"

.field public static final RFC2253:Ljava/lang/String; = "RFC2253"

.field private static final serialVersionUID:J = -0x6f200c377478839L


# instance fields
.field private transient thisX500Name:Lsun/security/x509/X500Name;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    if-nez p1, :cond_0

    .line 241
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "provided null input stream"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 245
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 246
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    .line 247
    :cond_1
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v0, "der":Lsun/security/util/DerValue;
    new-instance v4, Lsun/security/x509/X500Name;

    iget-object v5, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v4, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    return-void

    .line 249
    .end local v0    # "der":Lsun/security/util/DerValue;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 252
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 261
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 262
    const-string v4, "improperly specified input stream"

    .line 261
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 263
    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 264
    throw v2

    .line 253
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 254
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 255
    const-string v4, "improperly specified input stream and unable to reset input stream"

    .line 254
    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 257
    .restart local v2    # "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2, v1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 258
    throw v2
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {p0, p1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    if-nez p1, :cond_0

    .line 156
    new-instance v2, Ljava/lang/NullPointerException;

    .line 158
    const-string v3, "provided.null.name"

    .line 157
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    if-nez p2, :cond_1

    .line 161
    new-instance v2, Ljava/lang/NullPointerException;

    .line 163
    const-string v3, "provided.null.keyword.map"

    .line 162
    invoke-static {v3}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_1
    :try_start_0
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, p1, p2}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "improperly specified input name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 172
    throw v1
.end method

.method constructor <init>(Lsun/security/x509/X500Name;)V
    .locals 0
    .param p1, "x500Name"    # Lsun/security/x509/X500Name;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    .line 95
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "name"    # [B

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    :try_start_0
    new-instance v2, Lsun/security/x509/X500Name;

    invoke-direct {v2, p1}, Lsun/security/x509/X500Name;-><init>([B)V

    iput-object v2, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 215
    const-string v2, "improperly specified input name"

    .line 214
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 216
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 217
    throw v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/NotActiveException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 497
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([B)V

    iput-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    .line 494
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 484
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 454
    if-ne p0, p1, :cond_0

    .line 455
    const/4 v1, 0x1

    return v1

    .line 457
    :cond_0
    instance-of v1, p1, Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_1

    .line 458
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 460
    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    .line 461
    .local v0, "other":Ljavax/security/auth/x500/X500Principal;
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    iget-object v2, v0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v2}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getEncoded()[B
    .locals 3

    .prologue
    .line 419
    :try_start_0
    iget-object v1, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v1}, Lsun/security/x509/X500Name;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 420
    :catch_0
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to get encoding"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    const-string v0, "RFC2253"

    invoke-virtual {p0, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 344
    if-eqz p1, :cond_2

    .line 345
    const-string v0, "RFC1779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC1779Name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 347
    :cond_0
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253Name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 349
    :cond_1
    const-string v0, "CANONICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 353
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid format specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 391
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    .line 394
    const-string v1, "provided.null.OID.map"

    .line 393
    invoke-static {v1}, Lsun/security/util/ResourcesMgr;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    if-eqz p1, :cond_2

    .line 397
    const-string v0, "RFC1779"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 399
    :cond_1
    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0, p2}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid format specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Ljavax/security/auth/x500/X500Principal;->thisX500Name:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method