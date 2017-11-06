.class public Lcom/dawin/http/parser/TrackingInfoParser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dawin/http/parser/TrackingInfoParser$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;Ljava/lang/String;)V
    .locals 13
    .param p1, "list"    # Lorg/w3c/dom/NodeList;
    .param p2, "mAdDuration"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->a:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->b:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->c:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->d:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->e:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->f:Ljava/lang/String;

    const-string v9, ""

    iput-object v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->g:Ljava/lang/String;

    iput v10, p0, Lcom/dawin/http/parser/TrackingInfoParser;->h:I

    iput v10, p0, Lcom/dawin/http/parser/TrackingInfoParser;->i:I

    iput v10, p0, Lcom/dawin/http/parser/TrackingInfoParser;->j:I

    iput v10, p0, Lcom/dawin/http/parser/TrackingInfoParser;->k:I

    iput-boolean v11, p0, Lcom/dawin/http/parser/TrackingInfoParser;->l:Z

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->h:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->i:I

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    div-int/lit8 v9, v9, 0x4

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->j:I

    if-eqz p1, :cond_d

    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p1, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .local v2, "child":Lorg/w3c/dom/NodeList;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-lt v4, v9, :cond_0

    .end local v2    # "child":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    :goto_1
    return-void

    .restart local v2    # "child":Lorg/w3c/dom/NodeList;
    .restart local v4    # "i":I
    :cond_0
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Tracking"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v2, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    .local v8, "value":Ljava/lang/String;
    new-instance v0, Lcom/dawin/http/parser/TrackingInfoParser$a;

    const/4 v9, 0x0

    invoke-direct {v0, p0, v9}, Lcom/dawin/http/parser/TrackingInfoParser$a;-><init>(Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/TrackingInfoParser$a;)V

    .local v0, "attr":Lcom/dawin/http/parser/TrackingInfoParser$a;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    if-lt v5, v9, :cond_2

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "start"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->a:Ljava/lang/String;

    .end local v0    # "attr":Lcom/dawin/http/parser/TrackingInfoParser$a;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v5    # "j":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_1
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v0    # "attr":Lcom/dawin/http/parser/TrackingInfoParser$a;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v5    # "j":I
    .restart local v8    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    .local v7, "nodeValue":Ljava/lang/String;
    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    .local v6, "nodeName":Ljava/lang/String;
    const-string/jumbo v9, "rt"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v7}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a(Ljava/lang/String;)V

    :cond_3
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    const-string v9, "event"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0, v7}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .end local v0    # "attr":Lcom/dawin/http/parser/TrackingInfoParser$a;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "child":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "nodeValue":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v12, p0, Lcom/dawin/http/parser/TrackingInfoParser;->l:Z

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "attr":Lcom/dawin/http/parser/TrackingInfoParser$a;
    .restart local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .restart local v2    # "child":Lorg/w3c/dom/NodeList;
    .restart local v4    # "i":I
    .restart local v5    # "j":I
    .restart local v6    # "nodeName":Ljava/lang/String;
    .restart local v7    # "nodeValue":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v9, "offset"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v0, v7}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a(Ljava/lang/String;)V

    goto :goto_4

    .end local v6    # "nodeName":Ljava/lang/String;
    .end local v7    # "nodeValue":Ljava/lang/String;
    :cond_6
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "skip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->f:Ljava/lang/String;

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string v10, "complete"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->e:Ljava/lang/String;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string v10, "firstQuartile"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->h:I

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string v10, "midpoint"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->i:I

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "thirdQuartile"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->j:I

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "paytime"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->k:I

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->b()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "progress"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iput-object v8, p0, Lcom/dawin/http/parser/TrackingInfoParser;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/dawin/http/parser/TrackingInfoParser$a;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dawin/util/CommonUtils;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/dawin/http/parser/TrackingInfoParser;->k:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .end local v0    # "attr":Lcom/dawin/http/parser/TrackingInfoParser$a;
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    .end local v2    # "child":Lorg/w3c/dom/NodeList;
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v8    # "value":Ljava/lang/String;
    :cond_d
    iput-boolean v12, p0, Lcom/dawin/http/parser/TrackingInfoParser;->l:Z

    goto/16 :goto_1
.end method


# virtual methods
.method public getChargeTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getChargeTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->k:I

    return v0
.end method

.method public getEndTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getQuarterTag(I)Ljava/lang/String;
    .locals 1
    .param p1, "quarter"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->c:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->d:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getQuarterTime(I)I
    .locals 1
    .param p1, "quarter"    # I

    .prologue
    const/4 v0, -0x1

    .local v0, "result":I
    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    iget v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->h:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->i:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->j:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getSkipTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTag()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->a:Ljava/lang/String;

    return-object v0
.end method

.method public isParsingProblemOccured()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/dawin/http/parser/TrackingInfoParser;->l:Z

    return v0
.end method
