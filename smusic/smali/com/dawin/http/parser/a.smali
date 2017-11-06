.class public Lcom/dawin/http/parser/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/w3c/dom/Element;

.field private b:Lcom/dawin/http/parser/BasicInfoParser;

.field private c:Lcom/dawin/http/parser/ExtensionInfoParser;

.field private d:Lcom/dawin/http/parser/IconInfoParser;

.field private e:Lcom/dawin/http/parser/MediaFileInfoParser;

.field private f:Lcom/dawin/http/parser/TrackingInfoParser;

.field private g:Lcom/dawin/http/parser/AdditionalInfoParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "xmlObject"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    .local v3, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v4, "is":Ljava/io/InputStream;
    invoke-virtual {v1, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    .local v0, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    iput-object v5, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .end local v0    # "doc":Lorg/w3c/dom/Document;
    .end local v1    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v4    # "is":Ljava/io/InputStream;
    :goto_0
    new-instance v5, Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    invoke-direct {v5, v6}, Lcom/dawin/http/parser/BasicInfoParser;-><init>(Lorg/w3c/dom/Element;)V

    iput-object v5, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v5, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v5}, Lcom/dawin/http/parser/BasicInfoParser;->getAdId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "-1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    if-eqz v5, :cond_1

    :try_start_1
    new-instance v5, Lcom/dawin/http/parser/MediaFileInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v7, "MediaFiles"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dawin/http/parser/MediaFileInfoParser;-><init>(Lorg/w3c/dom/NodeList;)V

    iput-object v5, p0, Lcom/dawin/http/parser/a;->e:Lcom/dawin/http/parser/MediaFileInfoParser;

    new-instance v5, Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v7, "TrackingEvents"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    iget-object v7, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-virtual {v7}, Lcom/dawin/http/parser/BasicInfoParser;->getAdDuration()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/dawin/http/parser/TrackingInfoParser;-><init>(Lorg/w3c/dom/NodeList;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/dawin/http/parser/a;->f:Lcom/dawin/http/parser/TrackingInfoParser;

    new-instance v5, Lcom/dawin/http/parser/AdditionalInfoParser;

    invoke-direct {v5}, Lcom/dawin/http/parser/AdditionalInfoParser;-><init>()V

    iput-object v5, p0, Lcom/dawin/http/parser/a;->g:Lcom/dawin/http/parser/AdditionalInfoParser;

    new-instance v5, Lcom/dawin/http/parser/ExtensionInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v7, "Extensions"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    iget-object v7, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v8, p0, Lcom/dawin/http/parser/a;->f:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-direct {v5, v6, v7, v8}, Lcom/dawin/http/parser/ExtensionInfoParser;-><init>(Lorg/w3c/dom/NodeList;Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;)V

    iput-object v5, p0, Lcom/dawin/http/parser/a;->c:Lcom/dawin/http/parser/ExtensionInfoParser;

    iget-object v5, p0, Lcom/dawin/http/parser/a;->c:Lcom/dawin/http/parser/ExtensionInfoParser;

    invoke-virtual {v5}, Lcom/dawin/http/parser/ExtensionInfoParser;->getIsAvailable()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/dawin/http/parser/IconInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v7, "Icons"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    iget-object v7, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    invoke-direct {v5, v6, v7}, Lcom/dawin/http/parser/IconInfoParser;-><init>(Lorg/w3c/dom/NodeList;Lcom/dawin/http/parser/BasicInfoParser;)V

    iput-object v5, p0, Lcom/dawin/http/parser/a;->d:Lcom/dawin/http/parser/IconInfoParser;

    :cond_0
    iget-object v5, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v6, "TickerAds"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/dawin/http/parser/a;->g:Lcom/dawin/http/parser/AdditionalInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v7, "TickerAds"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/dawin/http/parser/AdditionalInfoParser;->initTickerInfo(Lorg/w3c/dom/NodeList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v2}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    .local v2, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v2}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/dawin/objects/AdInfos;
    .locals 7

    .prologue
    new-instance v0, Lcom/dawin/objects/AdInfos;

    iget-object v1, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v2, p0, Lcom/dawin/http/parser/a;->f:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v3, p0, Lcom/dawin/http/parser/a;->e:Lcom/dawin/http/parser/MediaFileInfoParser;

    iget-object v4, p0, Lcom/dawin/http/parser/a;->d:Lcom/dawin/http/parser/IconInfoParser;

    iget-object v5, p0, Lcom/dawin/http/parser/a;->g:Lcom/dawin/http/parser/AdditionalInfoParser;

    iget-object v6, p0, Lcom/dawin/http/parser/a;->c:Lcom/dawin/http/parser/ExtensionInfoParser;

    invoke-direct/range {v0 .. v6}, Lcom/dawin/objects/AdInfos;-><init>(Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/MediaFileInfoParser;Lcom/dawin/http/parser/IconInfoParser;Lcom/dawin/http/parser/AdditionalInfoParser;Lcom/dawin/http/parser/ExtensionInfoParser;)V

    return-object v0
.end method
