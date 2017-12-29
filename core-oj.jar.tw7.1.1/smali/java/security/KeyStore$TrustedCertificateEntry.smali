.class public final Ljava/security/KeyStore$TrustedCertificateEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrustedCertificateEntry"
.end annotation


# instance fields
.field private final cert:Ljava/security/cert/Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "trustedCert"    # Ljava/security/cert/Certificate;

    .prologue
    .line 576
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    if-nez p1, :cond_0

    .line 578
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    iput-object p1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    .line 576
    return-void
.end method


# virtual methods
.method public getTrustedCertificate()Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trusted certificate entry:\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/KeyStore$TrustedCertificateEntry;->cert:Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method