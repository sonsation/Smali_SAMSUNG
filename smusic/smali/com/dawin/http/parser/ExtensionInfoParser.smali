.class public Lcom/dawin/http/parser/ExtensionInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/objects/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dawin/objects/b;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;)V
    .locals 19
    .param p1, "nodeLists"    # Lorg/w3c/dom/NodeList;
    .param p2, "mBasicInfoParser"    # Lcom/dawin/http/parser/BasicInfoParser;
    .param p3, "mTrackingInfos"    # Lcom/dawin/http/parser/TrackingInfoParser;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/b;

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->c:Z

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->d:I

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/dawin/http/parser/BasicInfoParser;->getSkipOffset()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/dawin/util/CommonUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    new-instance v17, Lcom/dawin/objects/b;

    invoke-direct/range {v17 .. v17}, Lcom/dawin/objects/b;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/b;

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    if-lez v17, :cond_0

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v13

    .local v13, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v5, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/dawin/http/parser/ExtensionInfoParser;->c:Z

    .end local v5    # "i":I
    .end local v13    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_0
    return-void

    .restart local v5    # "i":I
    .restart local v13    # "nodeList":Lorg/w3c/dom/NodeList;
    :cond_1
    invoke-interface {v13, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Extension"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    :try_start_1
    new-instance v9, Lcom/dawin/objects/d;

    invoke-direct {v9}, Lcom/dawin/objects/d;-><init>()V

    .local v9, "mExtensionInfo":Lcom/dawin/objects/d;
    invoke-interface {v13, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    .local v3, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v6, v0, :cond_3

    invoke-interface {v13, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v12

    .local v12, "node":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_3
    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v7, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v9    # "mExtensionInfo":Lcom/dawin/objects/d;
    .end local v12    # "node":Lorg/w3c/dom/NodeList;
    :cond_2
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .restart local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v6    # "j":I
    .restart local v9    # "mExtensionInfo":Lcom/dawin/objects/d;
    :cond_3
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .local v15, "nodeValue":Ljava/lang/String;
    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    .local v14, "nodeName":Ljava/lang/String;
    const-string/jumbo v17, "type"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const-string v17, "button"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    const/16 v17, 0x3e8

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->b:I

    :cond_4
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    const-string v17, "banner"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const/16 v17, 0x7d0

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->b:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v6    # "j":I
    .end local v9    # "mExtensionInfo":Lcom/dawin/objects/d;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "nodeValue":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v6    # "j":I
    .restart local v9    # "mExtensionInfo":Lcom/dawin/objects/d;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "nodeValue":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string v17, "action"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_e

    const-string v17, "click"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x2711

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto :goto_5

    :cond_7
    const-string v17, "call"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x2712

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto :goto_5

    :cond_8
    const-string v17, "down"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x2713

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto :goto_5

    :cond_9
    const-string/jumbo v17, "skip"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/16 v17, 0x7530

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto :goto_5

    :cond_a
    const-string/jumbo v17, "skipwait"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const v17, 0x9c40

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto :goto_5

    :cond_b
    const-string/jumbo v17, "time"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const v17, 0xc350

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto/16 :goto_5

    :cond_c
    const-string v17, "landing"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x4e20

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto/16 :goto_5

    :cond_d
    const-string v17, "none"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    const v17, 0x1869f

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->c:I

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v17, "viewstart"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    iput-object v15, v9, Lcom/dawin/objects/d;->q:Ljava/lang/String;

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v17, "viewend"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    iput-object v15, v9, Lcom/dawin/objects/d;->r:Ljava/lang/String;

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v17, "src"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/b;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/dawin/objects/b;->a(Ljava/lang/String;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    iput-boolean v0, v9, Lcom/dawin/objects/d;->k:Z

    goto/16 :goto_5

    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "nodeValue":Ljava/lang/String;
    .restart local v7    # "k":I
    .restart local v12    # "node":Lorg/w3c/dom/NodeList;
    :cond_11
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Image"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const/16 v17, 0xc8

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->a:I

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/dawin/objects/d;->p:Ljava/lang/String;

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .local v2, "attr":Lorg/w3c/dom/NamedNodeMap;
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_6
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_13

    .end local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "l":I
    :cond_12
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .restart local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .restart local v8    # "l":I
    :cond_13
    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .local v16, "value":Ljava/lang/String;
    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .local v11, "name":Ljava/lang/String;
    const-string/jumbo v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->h:Ljava/lang/String;

    :cond_14
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_15
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->i:Ljava/lang/String;

    goto :goto_8

    :cond_16
    const-string v17, "left"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    goto :goto_8

    :cond_17
    const-string/jumbo v17, "top"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    goto :goto_8

    :cond_18
    const-string/jumbo v17, "right"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    goto :goto_8

    :cond_19
    const-string v17, "bottom"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    goto :goto_8

    .end local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "l":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_1a
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Text"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_28

    const/16 v17, 0x64

    move/from16 v0, v17

    iput v0, v9, Lcom/dawin/objects/d;->a:I

    new-instance v10, Lcom/dawin/objects/d$a;

    invoke-direct {v10}, Lcom/dawin/objects/d$a;-><init>()V

    .local v10, "mText":Lcom/dawin/objects/d$a;
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/dawin/objects/d$a;->c:Ljava/lang/String;

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .restart local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    const/4 v8, 0x0

    .restart local v8    # "l":I
    :goto_9
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-lt v8, v0, :cond_1b

    iget-object v0, v9, Lcom/dawin/objects/d;->j:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1b
    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "name":Ljava/lang/String;
    const-string v17, "font"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->d:Ljava/lang/String;

    :cond_1c
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_1d
    const-string v17, "format"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->b:Ljava/lang/String;

    goto :goto_a

    :cond_1e
    const-string v17, "counter"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->a:Ljava/lang/String;

    goto :goto_a

    :cond_1f
    const-string/jumbo v17, "size"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->e:Ljava/lang/String;

    goto :goto_a

    :cond_20
    const-string v17, "color"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->f:Ljava/lang/String;

    goto :goto_a

    :cond_21
    const-string/jumbo v17, "style"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_22

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->g:Ljava/lang/String;

    goto :goto_a

    :cond_22
    const-string v17, "edgecolor"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_23

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->h:Ljava/lang/String;

    goto :goto_a

    :cond_23
    const-string v17, "edgesize"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_24

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->i:Ljava/lang/String;

    goto :goto_a

    :cond_24
    const-string v17, "left"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_25

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->j:Ljava/lang/String;

    goto :goto_a

    :cond_25
    const-string/jumbo v17, "top"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_26

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->k:Ljava/lang/String;

    goto/16 :goto_a

    :cond_26
    const-string/jumbo v17, "right"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->l:Ljava/lang/String;

    goto/16 :goto_a

    :cond_27
    const-string v17, "bottom"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v0, v16

    iput-object v0, v10, Lcom/dawin/objects/d$a;->m:Ljava/lang/String;

    goto/16 :goto_a

    .end local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "l":I
    .end local v10    # "mText":Lcom/dawin/objects/d$a;
    .end local v11    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_28
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Background"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_33

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .restart local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    const/4 v8, 0x0

    .restart local v8    # "l":I
    :goto_b
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_12

    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .restart local v16    # "value":Ljava/lang/String;
    invoke-interface {v2, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "name":Ljava/lang/String;
    const-string v17, "color"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2a

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->l:Ljava/lang/String;

    :cond_29
    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_2a
    const-string v17, "edgecolor"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2b

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->m:Ljava/lang/String;

    goto :goto_c

    :cond_2b
    const-string v17, "edgesize"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2c

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->n:Ljava/lang/String;

    goto :goto_c

    :cond_2c
    const-string v17, "left"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2d

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->d:Ljava/lang/String;

    goto :goto_c

    :cond_2d
    const-string/jumbo v17, "top"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2e

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->e:Ljava/lang/String;

    goto :goto_c

    :cond_2e
    const-string/jumbo v17, "right"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2f

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->f:Ljava/lang/String;

    goto :goto_c

    :cond_2f
    const-string v17, "bottom"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_30

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->g:Ljava/lang/String;

    goto :goto_c

    :cond_30
    const-string/jumbo v17, "width"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_31

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->h:Ljava/lang/String;

    goto :goto_c

    :cond_31
    const-string v17, "height"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_32

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->i:Ljava/lang/String;

    goto :goto_c

    :cond_32
    const-string/jumbo v17, "radius"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_29

    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/dawin/objects/d;->o:Ljava/lang/String;

    goto/16 :goto_c

    .end local v2    # "attr":Lorg/w3c/dom/NamedNodeMap;
    .end local v8    # "l":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v16    # "value":Ljava/lang/String;
    :cond_33
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "Impression"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_34

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/dawin/objects/d;->s:Ljava/lang/String;

    goto/16 :goto_7

    :cond_34
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ClickThrough"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_35

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/dawin/objects/d;->t:Ljava/lang/String;

    goto/16 :goto_7

    :cond_35
    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ClickTracking"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    invoke-interface {v12, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/dawin/objects/d;->u:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_7

    .end local v3    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v7    # "k":I
    .end local v9    # "mExtensionInfo":Lcom/dawin/objects/d;
    .end local v12    # "node":Lorg/w3c/dom/NodeList;
    .end local v13    # "nodeList":Lorg/w3c/dom/NodeList;
    :catch_1
    move-exception v17

    goto/16 :goto_0
.end method


# virtual methods
.method public getExtensionBitmap()Lcom/dawin/objects/b;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/b;

    return-object v0
.end method

.method public getExtensionInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/dawin/objects/d;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsAvailable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->c:Z

    return v0
.end method

.method public getSkipShowTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->d:I

    return v0
.end method
