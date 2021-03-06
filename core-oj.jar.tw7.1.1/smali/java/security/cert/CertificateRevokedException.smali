.class public Ljava/security/cert/CertificateRevokedException;
.super Ljava/security/cert/CertificateException;
.source "CertificateRevokedException.java"


# static fields
.field private static final serialVersionUID:J = 0x6ccd4365f915b433L


# instance fields
.field private final authority:Ljavax/security/auth/x500/X500Principal;

.field private transient extensions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private final reason:Ljava/security/cert/CRLReason;

.field private revocationDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/util/Date;Ljava/security/cert/CRLReason;Ljavax/security/auth/x500/X500Principal;Ljava/util/Map;)V
    .locals 4
    .param p1, "revocationDate"    # Ljava/util/Date;
    .param p2, "reason"    # Ljava/security/cert/CRLReason;
    .param p3, "authority"    # Ljavax/security/auth/x500/X500Principal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/CRLReason;",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p4, "extensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-direct {p0}, Ljava/security/cert/CertificateException;-><init>()V

    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_1
    if-eqz p3, :cond_0

    .line 92
    if-eqz p4, :cond_0

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    .line 96
    iput-object p2, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    .line 97
    iput-object p3, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 90
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "ois"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 222
    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    iput-object v7, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v6

    .line 227
    .local v6, "size":I
    if-nez v6, :cond_0

    .line 228
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    iput-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 234
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 236
    .local v5, "oid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    .line 237
    .local v0, "critical":Z
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 238
    .local v4, "length":I
    new-array v2, v4, [B

    .line 239
    .local v2, "extVal":[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 241
    new-instance v7, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v7, v5}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-static {v7, v0, v2}, Lsun/security/x509/Extension;->newExtension(Lsun/security/util/ObjectIdentifier;Z[B)Lsun/security/x509/Extension;

    move-result-object v1

    .line 242
    .local v1, "ext":Ljava/security/cert/Extension;
    iget-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v7, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    .end local v0    # "critical":Z
    .end local v1    # "ext":Ljava/security/cert/Extension;
    .end local v2    # "extVal":[B
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "oid":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    goto :goto_0

    .line 216
    .restart local v3    # "i":I
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "oos"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 195
    iget-object v4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 202
    iget-object v4, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 203
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Extension;

    .line 204
    .local v2, "ext":Ljava/security/cert/Extension;
    invoke-interface {v2}, Ljava/security/cert/Extension;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    invoke-interface {v2}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 206
    invoke-interface {v2}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v3

    .line 207
    .local v3, "extVal":[B
    array-length v4, v3

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 208
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->write([B)V

    goto :goto_0

    .line 189
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/cert/Extension;>;"
    .end local v2    # "ext":Ljava/security/cert/Extension;
    .end local v3    # "extVal":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public getAuthorityName()Ljavax/security/auth/x500/X500Principal;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getExtensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInvalidityDate()Ljava/util/Date;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    invoke-virtual {p0}, Ljava/security/cert/CertificateRevokedException;->getExtensions()Ljava/util/Map;

    move-result-object v3

    const-string v4, "2.5.29.24"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Extension;

    .line 147
    .local v0, "ext":Ljava/security/cert/Extension;
    if-nez v0, :cond_0

    .line 148
    return-object v6

    .line 152
    :cond_0
    :try_start_0
    invoke-static {v0}, Lsun/security/x509/InvalidityDateExtension;->toImpl(Ljava/security/cert/Extension;)Lsun/security/x509/InvalidityDateExtension;

    move-result-object v3

    const-string v4, "DATE"

    invoke-virtual {v3, v4}, Lsun/security/x509/InvalidityDateExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 153
    .local v1, "invalidity":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 154
    .end local v1    # "invalidity":Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 155
    .local v2, "ioe":Ljava/io/IOException;
    return-object v6
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Certificate has been revoked, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string v1, ", revocation date: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    const-string v1, ", authority: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->authority:Ljavax/security/auth/x500/X500Principal;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    const-string v1, ", extensions: "

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    iget-object v1, p0, Ljava/security/cert/CertificateRevokedException;->extensions:Ljava/util/Map;

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getRevocationReason()Ljava/security/cert/CRLReason;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljava/security/cert/CertificateRevokedException;->reason:Ljava/security/cert/CRLReason;

    return-object v0
.end method
