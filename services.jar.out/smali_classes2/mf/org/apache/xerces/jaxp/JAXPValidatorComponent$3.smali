.class Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;
.super Ljava/lang/Object;
.source "JAXPValidatorComponent.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSResourceResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Lmf/javax/xml/validation/ValidatorHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ls/LSInput;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 153
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$6(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$3;->this$0:Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;->access$6(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;)Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v0

    .line 156
    new-instance v1, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p3, p4, p5, v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    .line 159
    new-instance v1, Lmf/org/apache/xerces/dom/DOMInputImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMInputImpl;-><init>()V

    .line 160
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/ls/LSInput;->setBaseURI(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/ls/LSInput;->setByteStream(Ljava/io/InputStream;)V

    .line 162
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/ls/LSInput;->setCharacterStream(Ljava/io/Reader;)V

    .line 163
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/ls/LSInput;->setEncoding(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lmf/org/w3c/dom/ls/LSInput;->setPublicId(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/ls/LSInput;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    return-object v1

    .line 153
    :cond_0
    return-object v3

    .line 157
    :cond_1
    return-object v3

    .line 167
    :catch_0
    move-exception v0

    .line 171
    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
