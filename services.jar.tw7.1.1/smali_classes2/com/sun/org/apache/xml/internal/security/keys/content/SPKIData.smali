.class public Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/KeyInfoContent;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$content$SPKIData:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;->class$com$sun$org$apache$xml$internal$security$keys$content$SPKIData:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;->class$com$sun$org$apache$xml$internal$security$keys$content$SPKIData:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string v0, "com.sun.org.apache.xml.internal.security.keys.content.SPKIData"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;->class$com$sun$org$apache$xml$internal$security$keys$content$SPKIData:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string v0, "SPKIData"

    return-object v0
.end method
