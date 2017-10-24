.class Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;
.super Ljava/lang/Object;
.source "EnterpriseIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/EnterpriseIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationConfigDocument"
.end annotation


# instance fields
.field XMLDoc:Lorg/w3c/dom/Document;

.field private authIDProvider:Lorg/w3c/dom/Node;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIdpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)Lorg/w3c/dom/Node;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->getAuthIDProvider()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V

    return-void
.end method

.method constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "doc"    # Lorg/w3c/dom/Document;

    .prologue
    const/4 v0, 0x0

    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 1593
    iput-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    .line 1596
    iput-object p1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    .line 1597
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->update()V

    .line 1595
    return-void
.end method

.method private getAuthIDProvider()Lorg/w3c/dom/Node;
    .locals 1

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method private getAuthIdpPackageName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1634
    iget-object v1, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    if-nez v1, :cond_0

    .line 1635
    return-object v2

    .line 1636
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1637
    .local v0, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v1, "servicepackagename"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private update()V
    .locals 4

    .prologue
    .line 1602
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->updateIDAuthenticator()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1606
    :catch_0
    move-exception v0

    .line 1607
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1608
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1603
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1604
    .local v1, "e":Ljava/lang/NullPointerException;
    sget-boolean v2, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1605
    const-string/jumbo v2, "EnterpriseIdentity"

    const-string/jumbo v3, "In AuthenticationConfigDocument update: Exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateIDAuthenticator()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1613
    iget-object v4, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->XMLDoc:Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 1614
    .local v1, "root":Lorg/w3c/dom/Node;
    iput-object v5, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    .line 1615
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 1616
    .local v3, "solutionNodes":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_1

    .line 1617
    :cond_0
    return-void

    .line 1619
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1620
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 1621
    .local v2, "solution":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1622
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "authenticationprovider"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1621
    if-eqz v4, :cond_2

    .line 1623
    iput-object v2, p0, Lcom/android/server/enterprise/sso/EnterpriseIdentity$AuthenticationConfigDocument;->authIDProvider:Lorg/w3c/dom/Node;

    .line 1624
    return-void

    .line 1619
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1612
    .end local v2    # "solution":Lorg/w3c/dom/Node;
    :cond_3
    return-void
.end method
