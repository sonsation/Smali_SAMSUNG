.class public Lcom/dawin/http/parser/BasicInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 14
    .param p1, "xmlObject"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->a:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->c:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->d:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->e:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->f:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->g:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->h:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->i:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->j:Ljava/lang/String;

    const-string v11, ""

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->k:Ljava/lang/String;

    iput-boolean v12, p0, Lcom/dawin/http/parser/BasicInfoParser;->l:Z

    if-eqz p1, :cond_14

    :try_start_0
    const-string v11, "Ad"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const-string v11, "-1"

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    :cond_1
    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    const-string v12, "-1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "Not applicable ad"

    invoke-static {v11}, Lcom/dawin/util/f;->d(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v11, "-1"

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v13, p0, Lcom/dawin/http/parser/BasicInfoParser;->l:Z

    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    const-string v11, "AdSystem"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, "adSystem":Lorg/w3c/dom/NodeList;
    const-string v11, "AdTitle"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, "adTitle":Lorg/w3c/dom/NodeList;
    const-string v11, "Description"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .local v4, "description":Lorg/w3c/dom/NodeList;
    const-string v11, "Error"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .local v6, "error":Lorg/w3c/dom/NodeList;
    const-string v11, "Duration"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .local v0, "adDuration":Lorg/w3c/dom/NodeList;
    const-string v11, "VideoClicks"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .local v10, "videoClick":Lorg/w3c/dom/NodeList;
    const-string v11, "InLine"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    .local v8, "impression":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v7, v11, :cond_7

    const/4 v7, 0x0

    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v7, v11, :cond_9

    const/4 v7, 0x0

    :goto_4
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v7, v11, :cond_b

    const/4 v7, 0x0

    :goto_5
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v7, v11, :cond_d

    const/4 v7, 0x0

    :goto_6
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    if-lt v7, v11, :cond_f

    :try_start_3
    const-string v11, "Linear"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    const-string v11, "Linear"

    invoke-interface {p1, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->g:Ljava/lang/String;

    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->g:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    const-string v11, "00:00:05"

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->g:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_7
    const/4 v7, 0x0

    :goto_8
    :try_start_4
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-lt v7, v11, :cond_11

    const/4 v7, 0x0

    :goto_9
    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    if-ge v7, v11, :cond_2

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .local v3, "attrName":Ljava/lang/String;
    invoke-interface {v8, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .local v9, "value":Ljava/lang/String;
    const-string v11, "Impression"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iput-object v9, p0, Lcom/dawin/http/parser/BasicInfoParser;->j:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->j:Ljava/lang/String;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->j:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "key"

    invoke-virtual {v11, v12}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->k:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Session Key : "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/dawin/http/parser/BasicInfoParser;->k:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dawin/util/f;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .end local v3    # "attrName":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_6
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_7
    :try_start_6
    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v1, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->a:Ljava/lang/String;

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_a

    invoke-interface {v2, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->c:Ljava/lang/String;

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_b
    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_c

    invoke-interface {v4, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->d:Ljava/lang/String;

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_d
    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-interface {v6, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->e:Ljava/lang/String;

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_f
    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-interface {v0, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/dawin/util/CommonUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/dawin/http/parser/BasicInfoParser;->f:Ljava/lang/String;

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_11
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "attrName":Ljava/lang/String;
    invoke-interface {v10, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "value":Ljava/lang/String;
    const-string v11, "ClickThrough"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    iput-object v9, p0, Lcom/dawin/http/parser/BasicInfoParser;->h:Ljava/lang/String;

    .end local v3    # "attrName":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_12
    :goto_b
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .restart local v3    # "attrName":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_13
    const-string v11, "ClickTracking"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iput-object v9, p0, Lcom/dawin/http/parser/BasicInfoParser;->i:Ljava/lang/String;

    goto :goto_b

    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_a

    .end local v0    # "adDuration":Lorg/w3c/dom/NodeList;
    .end local v1    # "adSystem":Lorg/w3c/dom/NodeList;
    .end local v2    # "adTitle":Lorg/w3c/dom/NodeList;
    .end local v3    # "attrName":Ljava/lang/String;
    .end local v4    # "description":Lorg/w3c/dom/NodeList;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "error":Lorg/w3c/dom/NodeList;
    .end local v7    # "i":I
    .end local v8    # "impression":Lorg/w3c/dom/NodeList;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "videoClick":Lorg/w3c/dom/NodeList;
    :cond_14
    iput-boolean v13, p0, Lcom/dawin/http/parser/BasicInfoParser;->l:Z

    goto/16 :goto_1

    .restart local v0    # "adDuration":Lorg/w3c/dom/NodeList;
    .restart local v1    # "adSystem":Lorg/w3c/dom/NodeList;
    .restart local v2    # "adTitle":Lorg/w3c/dom/NodeList;
    .restart local v4    # "description":Lorg/w3c/dom/NodeList;
    .restart local v6    # "error":Lorg/w3c/dom/NodeList;
    .restart local v7    # "i":I
    .restart local v8    # "impression":Lorg/w3c/dom/NodeList;
    .restart local v10    # "videoClick":Lorg/w3c/dom/NodeList;
    :catch_3
    move-exception v11

    goto/16 :goto_7
.end method


# virtual methods
.method public getAdDescription()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAdDuration()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getAdSystem()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getImpression()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipOffset()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoClickThrough()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoClickTracking()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isParsingProblemOccured()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->l:Z

    return v0
.end method
