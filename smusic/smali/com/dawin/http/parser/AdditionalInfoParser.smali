.class public Lcom/dawin/http/parser/AdditionalInfoParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/parser/AdditionalInfoParser$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser;->a:Z

    iput-boolean v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser;->b:Z

    return-void
.end method


# virtual methods
.method public getTickerAdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/http/parser/AdditionalInfoParser$a;",
            ">;"
        }
    .end annotation

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser;->c:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initTickerInfo(Lorg/w3c/dom/NodeList;)V
    .locals 20
    .param p1, "ticker"    # Lorg/w3c/dom/NodeList;

    .prologue
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v17

    .local v17, "tickerList":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v15, v1, :cond_1

    new-instance v12, Lcom/dawin/http/parser/AdditionalInfoParser$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/dawin/http/parser/AdditionalInfoParser$1;-><init>(Lcom/dawin/http/parser/AdditionalInfoParser;)V

    .local v12, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/dawin/http/parser/AdditionalInfoParser$a;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->c:Ljava/util/ArrayList;

    invoke-static {v1, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->c:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->a:Z

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->b:Z

    .end local v12    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/dawin/http/parser/AdditionalInfoParser$a;>;"
    .end local v15    # "i":I
    .end local v17    # "tickerList":Lorg/w3c/dom/NodeList;
    :cond_0
    :goto_1
    return-void

    .restart local v15    # "i":I
    .restart local v17    # "tickerList":Lorg/w3c/dom/NodeList;
    :cond_1
    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    .local v11, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const-string v3, ""

    .local v3, "program":Ljava/lang/String;
    const/4 v4, -0x1

    .local v4, "positionNum":I
    const/4 v6, -0x1

    .local v6, "startTime":I
    const/4 v7, -0x1

    .local v7, "endTime":I
    const/4 v5, 0x0

    .local v5, "sizePer":I
    const-string v9, ""

    .local v9, "clickTh":Ljava/lang/String;
    const-string v10, ""

    .local v10, "clickTr":Ljava/lang/String;
    const-string v8, ""

    .local v8, "imageUrl":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "x":I
    :goto_2
    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    move/from16 v0, v18

    if-lt v0, v1, :cond_3

    if-eqz v3, :cond_2

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .local v13, "details":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .local v16, "j":I
    :goto_3
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move/from16 v0, v16

    if-lt v0, v1, :cond_9

    .end local v3    # "program":Ljava/lang/String;
    .end local v4    # "positionNum":I
    .end local v5    # "sizePer":I
    .end local v6    # "startTime":I
    .end local v7    # "endTime":I
    .end local v8    # "imageUrl":Ljava/lang/String;
    .end local v9    # "clickTh":Ljava/lang/String;
    .end local v10    # "clickTr":Ljava/lang/String;
    .end local v11    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "details":Lorg/w3c/dom/NodeList;
    .end local v16    # "j":I
    .end local v18    # "x":I
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .restart local v3    # "program":Ljava/lang/String;
    .restart local v4    # "positionNum":I
    .restart local v5    # "sizePer":I
    .restart local v6    # "startTime":I
    .restart local v7    # "endTime":I
    .restart local v8    # "imageUrl":Ljava/lang/String;
    .restart local v9    # "clickTh":Ljava/lang/String;
    .restart local v10    # "clickTr":Ljava/lang/String;
    .restart local v11    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v18    # "x":I
    :cond_3
    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "program"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    :cond_5
    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "positionNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_4

    :cond_6
    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sizePercent"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_4

    :cond_7
    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "startViewSec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_4

    :cond_8
    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "endViewSec"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_4

    .restart local v13    # "details":Lorg/w3c/dom/NodeList;
    .restart local v16    # "j":I
    :cond_9
    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_b

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StaticResource"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    const-string v1, ""

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v9, :cond_b

    const-string v1, ""

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v10, :cond_b

    const-string v1, ""

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    if-eqz v8, :cond_b

    const-string v1, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    if-lez v4, :cond_b

    if-ltz v6, :cond_b

    if-lez v7, :cond_b

    if-lez v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->c:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    new-instance v1, Lcom/dawin/http/parser/AdditionalInfoParser$a;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/dawin/http/parser/AdditionalInfoParser$a;-><init>(Lcom/dawin/http/parser/AdditionalInfoParser;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_c
    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TickerClickThrough"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_d
    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TickerClickTracking"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto/16 :goto_5

    .end local v3    # "program":Ljava/lang/String;
    .end local v4    # "positionNum":I
    .end local v5    # "sizePer":I
    .end local v6    # "startTime":I
    .end local v7    # "endTime":I
    .end local v8    # "imageUrl":Ljava/lang/String;
    .end local v9    # "clickTh":Ljava/lang/String;
    .end local v10    # "clickTr":Ljava/lang/String;
    .end local v11    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v13    # "details":Lorg/w3c/dom/NodeList;
    .end local v15    # "i":I
    .end local v16    # "j":I
    .end local v17    # "tickerList":Lorg/w3c/dom/NodeList;
    .end local v18    # "x":I
    :catch_0
    move-exception v14

    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/dawin/http/parser/AdditionalInfoParser;->a:Z

    goto/16 :goto_1
.end method

.method public isAdditionalInfoAvailable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser;->b:Z

    return v0
.end method

.method public isTickerAvailable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/AdditionalInfoParser;->a:Z

    return v0
.end method
