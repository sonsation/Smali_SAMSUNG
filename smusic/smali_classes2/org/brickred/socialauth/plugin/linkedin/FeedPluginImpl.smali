.class public Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;
.super Ljava/lang/Object;
.source "FeedPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/FeedPlugin;


# static fields
.field private static final FEED_URL:Ljava/lang/String; = "http://api.linkedin.com/v1/people/~/network/updates"

.field private static final UPDATE_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x6e82704b4a2b99dL

.field static final xPath:Ljavax/xml/xpath/XPath;


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field appUpdateExpression:Ljava/lang/String;

.field cfnameExpression:Ljava/lang/String;

.field clnameExpression:Ljava/lang/String;

.field companyExpression:Ljava/lang/String;

.field companyPersonFnameExpression:Ljava/lang/String;

.field companyPersonIdExpression:Ljava/lang/String;

.field companyPersonLnameExpression:Ljava/lang/String;

.field dateExpression:Ljava/lang/String;

.field fnameExpression:Ljava/lang/String;

.field groupNameExpression:Ljava/lang/String;

.field idExpression:Ljava/lang/String;

.field jobCompanyExpression:Ljava/lang/String;

.field jobPositionExpression:Ljava/lang/String;

.field jobPosterFnameExpression:Ljava/lang/String;

.field jobPosterIdExpression:Ljava/lang/String;

.field jobPosterLnameExpression:Ljava/lang/String;

.field lnameExpression:Ljava/lang/String;

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

.field recommendationExpression:Ljava/lang/String;

.field recommendationGivenCountExpression:Ljava/lang/String;

.field recommendeeFnameExpression:Ljava/lang/String;

.field recommendeeLnameExpression:Ljava/lang/String;

.field recommenderFnameExpression:Ljava/lang/String;

.field recommenderLnameExpression:Ljava/lang/String;

.field shareCommentExpression:Ljava/lang/String;

.field statusExpression:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v0

    sput-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    .line 98
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "CONN"

    const-string v2, " is now connected to "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "NCON"

    const-string v2, " is now a connection "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "CCEM"

    const-string v2, " has joined LinkedIn "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "SHAR"

    const-string v2, " has shared - "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "STAT"

    const-string v2, " - "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "JOBP"

    const-string v2, "posted a job: "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "JGRP"

    const-string v2, " joined the group "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "PREC_GIVEN"

    const-string v2, " recommends "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "PREC_RECEIVED"

    const-string v2, " was recommended by "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "PROF"

    const-string v2, " updates his/her profile."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "APPM"

    const-string v2, " - "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "MSFC"

    const-string v2, " is now following "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v1, "PICU"

    const-string v2, " updated profile picture "

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 1
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 65
    const-string v0, "//update[%s]/update-content/person/first-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->fnameExpression:Ljava/lang/String;

    .line 66
    const-string v0, "//update[%s]/update-content/person/last-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->lnameExpression:Ljava/lang/String;

    .line 67
    const-string v0, "//update[%s]/update-content/person/id"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->idExpression:Ljava/lang/String;

    .line 68
    const-string v0, "//update[%s]/update-content/person/connections/person/first-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->cfnameExpression:Ljava/lang/String;

    .line 69
    const-string v0, "//update[%s]/update-content/person/connections/person/last-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->clnameExpression:Ljava/lang/String;

    .line 70
    const-string v0, "//update[%s]/timestamp"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->dateExpression:Ljava/lang/String;

    .line 71
    const-string v0, "//update[%s]/update-content/person/current-share/comment"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->shareCommentExpression:Ljava/lang/String;

    .line 72
    const-string v0, "//update[%s]/update-content/person/current-status"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->statusExpression:Ljava/lang/String;

    .line 73
    const-string v0, "//update[%s]/update-content/job-poster/first-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPosterFnameExpression:Ljava/lang/String;

    .line 74
    const-string v0, "//update[%s]/update-content/job-poster/last-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPosterLnameExpression:Ljava/lang/String;

    .line 75
    const-string v0, "//update[%s]/update-content/job-poster/id"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPosterIdExpression:Ljava/lang/String;

    .line 76
    const-string v0, "//update[%s]/update-content/job/position"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPositionExpression:Ljava/lang/String;

    .line 77
    const-string v0, "//update[%s]/update-content/job/company"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobCompanyExpression:Ljava/lang/String;

    .line 78
    const-string v0, "//update[%s]/update-content/person/member-groups/member-group/name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->groupNameExpression:Ljava/lang/String;

    .line 79
    const-string v0, "//update[%s]/update-content/person/recommendations-given/recommendation/recommendation-snippet"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendationExpression:Ljava/lang/String;

    .line 80
    const-string v0, "//update[%s]/update-content/person/recommendations-given/recommendation/recommendee/first-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendeeFnameExpression:Ljava/lang/String;

    .line 81
    const-string v0, "//update[%s]/update-content/person/recommendations-given/recommendation/recommendee/last-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendeeLnameExpression:Ljava/lang/String;

    .line 82
    const-string v0, "//update[%s]/update-content/person/recommendations-received/recommendation/recommender/first-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommenderFnameExpression:Ljava/lang/String;

    .line 83
    const-string v0, "//update[%s]/update-content/person/recommendations-received/recommendation/recommender/last-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommenderLnameExpression:Ljava/lang/String;

    .line 84
    const-string v0, "count(//update[%s]/update-content/person/recommendations-given)"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendationGivenCountExpression:Ljava/lang/String;

    .line 85
    const-string v0, "//update[%s]/update-content/person/person-activities/activity/body"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->appUpdateExpression:Ljava/lang/String;

    .line 86
    const-string v0, "//update[%s]/update-content/company/name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyExpression:Ljava/lang/String;

    .line 87
    const-string v0, "//update[%s]/update-content/company-person-update/person/first-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyPersonFnameExpression:Ljava/lang/String;

    .line 88
    const-string v0, "//update[%s]/update-content/company-person-update/person/last-name"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyPersonLnameExpression:Ljava/lang/String;

    .line 89
    const-string v0, "//update[%s]/update-content/company-person-update/person/id"

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyPersonIdExpression:Ljava/lang/String;

    .line 139
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 140
    return-void
.end method

.method private getStatusFeed(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 41
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    const-string/jumbo v36, "update"

    move-object/from16 v0, p1

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v24

    .line 179
    .local v24, "nodes":Lorg/w3c/dom/NodeList;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    if-lez v36, :cond_0

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v36, v0

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "Feeds count :: "

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-interface/range {v36 .. v37}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 182
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v36

    move/from16 v0, v36

    if-le v14, v0, :cond_1

    .line 306
    .end local v14    # "i":I
    :cond_0
    return-object v20

    .line 183
    .restart local v14    # "i":I
    :cond_1
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    new-instance v37, Ljava/lang/StringBuilder;

    const-string v38, "//update["

    invoke-direct/range {v37 .. v38}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "]/update-type"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 185
    .local v34, "type":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->fnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 185
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 187
    .local v12, "fname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->lnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 187
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    .line 189
    .local v21, "lname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->idExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 191
    .local v15, "id":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 192
    .local v23, "name":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->dateExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v33

    .line 194
    .local v33, "time":Ljava/lang/String;
    new-instance v10, Ljava/util/Date;

    invoke-static/range {v33 .. v33}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    move-wide/from16 v0, v36

    invoke-direct {v10, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 196
    .local v10, "date":Ljava/util/Date;
    const/16 v16, 0x1

    .line 197
    .local v16, "isSet":Z
    new-instance v11, Lorg/brickred/socialauth/Feed;

    invoke-direct {v11}, Lorg/brickred/socialauth/Feed;-><init>()V

    .line 198
    .local v11, "feed":Lorg/brickred/socialauth/Feed;
    invoke-virtual {v11, v15}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v11, v10}, Lorg/brickred/socialauth/Feed;->setCreatedAt(Ljava/util/Date;)V

    .line 200
    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 202
    const-string v36, "CONN"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    .line 203
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->cfnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 203
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "cfname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->clnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 205
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "clname":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "CONN"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 208
    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 207
    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    .line 301
    .end local v4    # "cfname":Ljava/lang/String;
    .end local v5    # "clname":Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_2

    .line 302
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 209
    :cond_3
    const-string v36, "NCON"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    .line 210
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "NCON"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 211
    :cond_4
    const-string v36, "CCEM"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    .line 212
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "CCEM"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto :goto_1

    .line 213
    :cond_5
    const-string v36, "SHAR"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 214
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->shareCommentExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 214
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "comment":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "SHAR"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 217
    .end local v6    # "comment":Ljava/lang/String;
    :cond_6
    const-string v36, "STAT"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 218
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->statusExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 218
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 220
    .local v32, "status":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "STAT"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 221
    .end local v32    # "status":Ljava/lang/String;
    :cond_7
    const-string v36, "JOBP"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_8

    .line 222
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPosterFnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 222
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 224
    .local v17, "jpFname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPosterLnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 224
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 226
    .local v19, "jpLname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPosterIdExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 226
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 228
    .local v18, "jpId":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobPositionExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 228
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 230
    .local v28, "position":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->jobCompanyExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 230
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, "company":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 233
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 234
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 235
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "JOBP"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " at "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 236
    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 234
    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 237
    .end local v7    # "company":Ljava/lang/String;
    .end local v17    # "jpFname":Ljava/lang/String;
    .end local v18    # "jpId":Ljava/lang/String;
    .end local v19    # "jpLname":Ljava/lang/String;
    .end local v28    # "position":Ljava/lang/String;
    :cond_8
    const-string v36, "JGRP"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 238
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->groupNameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 238
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 240
    .local v13, "groupName":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "JGRP"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 241
    .end local v13    # "groupName":Ljava/lang/String;
    :cond_9
    const-string v36, "PREC"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 242
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendationGivenCountExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    .line 242
    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 244
    sget-object v38, Ljavax/xml/xpath/XPathConstants;->NUMBER:Ljavax/xml/namespace/QName;

    .line 242
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    move-object/from16 v3, v38

    invoke-interface {v0, v1, v2, v3}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/Double;

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 245
    .local v8, "count":D
    const-string v22, ""

    .line 246
    .local v22, "message":Ljava/lang/String;
    const-wide/16 v36, 0x0

    cmpl-double v36, v8, v36

    if-lez v36, :cond_b

    .line 247
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendationExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 247
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v29

    .line 250
    .local v29, "recommendation":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendeeFnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 250
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 253
    .local v30, "recommendeeFname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommendeeLnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 253
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 256
    .local v31, "recommendeeLname":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "PREC_GIVEN"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 257
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 256
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 258
    if-eqz v29, :cond_a

    .line 259
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v36

    if-lez v36, :cond_a

    .line 260
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " :\'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "\'"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 272
    .end local v29    # "recommendation":Ljava/lang/String;
    :cond_a
    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 263
    .end local v30    # "recommendeeFname":Ljava/lang/String;
    .end local v31    # "recommendeeLname":Ljava/lang/String;
    :cond_b
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommenderFnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 263
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 266
    .restart local v30    # "recommendeeFname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->recommenderLnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 266
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 269
    .restart local v31    # "recommendeeLname":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "PREC_RECEIVED"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 270
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    .line 269
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_2

    .line 273
    .end local v8    # "count":D
    .end local v22    # "message":Ljava/lang/String;
    .end local v30    # "recommendeeFname":Ljava/lang/String;
    .end local v31    # "recommendeeLname":Ljava/lang/String;
    :cond_c
    const-string v36, "PROF"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_d

    .line 274
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "PROF"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 275
    :cond_d
    const-string v36, "APPM"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 276
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->appUpdateExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 276
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    .line 278
    .local v35, "update":Ljava/lang/String;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "APPM"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 279
    .end local v35    # "update":Ljava/lang/String;
    :cond_e
    const-string v36, "MSFC"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 280
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 280
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 282
    .restart local v7    # "company":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyPersonFnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 282
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 285
    .local v25, "pfname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyPersonLnameExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 285
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v27

    .line 288
    .local v27, "plname":Ljava/lang/String;
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->xPath:Ljavax/xml/xpath/XPath;

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->companyPersonIdExpression:Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    invoke-static/range {v37 .. v38}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 288
    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    .line 290
    .local v26, "pid":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    .line 291
    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "MSFC"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 290
    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    .line 292
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setFrom(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setId(Ljava/lang/String;)V

    .line 294
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 295
    .end local v7    # "company":Ljava/lang/String;
    .end local v25    # "pfname":Ljava/lang/String;
    .end local v26    # "pid":Ljava/lang/String;
    .end local v27    # "plname":Ljava/lang/String;
    :cond_f
    const-string v36, "PICU"

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    .line 296
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v36, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->UPDATE_TYPES:Ljava/util/Map;

    const-string v38, "PICU"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/brickred/socialauth/Feed;->setMessage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 298
    :cond_10
    const/16 v16, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public getFeeds()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/brickred/socialauth/Feed;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v5, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    const-string v6, "Getting feeds from URL : http://api.linkedin.com/v1/people/~/network/updates"

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 151
    const/4 v4, 0x0

    .line 154
    .local v4, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    iget-object v5, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    const-string v6, "http://api.linkedin.com/v1/people/~/network/updates"

    invoke-virtual {v5, v6}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v5

    const/16 v6, 0xc8

    if-eq v5, v6, :cond_0

    .line 161
    new-instance v5, Lorg/brickred/socialauth/exception/SocialAuthException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to retrieve the feeds from  http://api.linkedin.com/v1/people/~/network/updates. Staus :"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v4}, Lorg/brickred/socialauth/util/Response;->getStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 161
    invoke-direct {v5, v6}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "ie":Ljava/lang/Exception;
    new-instance v5, Lorg/brickred/socialauth/exception/SocialAuthException;

    const-string v6, "Failed to retrieve the feeds from http://api.linkedin.com/v1/people/~/network/updates"

    invoke-direct {v5, v6, v1}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 167
    .end local v1    # "ie":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 166
    invoke-static {v5}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 168
    .local v3, "root":Lorg/w3c/dom/Element;
    invoke-direct {p0, v3}, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->getStatusFeed(Lorg/w3c/dom/Element;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 174
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    return-object v2

    .line 170
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/brickred/socialauth/Feed;>;"
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :catch_1
    move-exception v0

    .line 171
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 172
    const-string v6, "Failed to parse the feeds from response.http://api.linkedin.com/v1/people/~/network/updates"

    .line 171
    invoke-direct {v5, v6, v0}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 316
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/linkedin/FeedPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 317
    return-void
.end method
