.class public Lcom/dawin/http/parser/MediaFileInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 10
    .param p1, "list"    # Lorg/w3c/dom/NodeList;

    .prologue
    const/4 v9, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v7, ""

    iput-object v7, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->a:Ljava/lang/String;

    const-string v7, ""

    iput-object v7, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->b:Ljava/lang/String;

    const-string v7, ""

    iput-object v7, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->c:Ljava/lang/String;

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->d:Z

    if-eqz p1, :cond_7

    const/4 v3, 0x0

    .local v3, "child":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_1

    :goto_1
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v5, v7, :cond_3

    .end local v3    # "child":Lorg/w3c/dom/NodeList;
    .end local v5    # "i":I
    :cond_0
    :goto_3
    return-void

    .restart local v3    # "child":Lorg/w3c/dom/NodeList;
    .restart local v5    # "i":I
    :cond_1
    invoke-interface {p1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {p1, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MediaFile"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->a:Ljava/lang/String;

    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .local v2, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .local v0, "attrName":Ljava/lang/String;
    invoke-interface {v2, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .local v1, "attrValue":Ljava/lang/String;
    const-string v7, "delivery"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v1, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->b:Ljava/lang/String;

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    const-string/jumbo v7, "type"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v1, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    .end local v2    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "j":I
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v9, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->d:Z

    goto :goto_3

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .end local v3    # "child":Lorg/w3c/dom/NodeList;
    .end local v5    # "i":I
    :cond_7
    iput-boolean v9, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->d:Z

    goto :goto_3
.end method


# virtual methods
.method public getMediaDelivery()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaFileUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isParsingProblemOccured()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->d:Z

    return v0
.end method
