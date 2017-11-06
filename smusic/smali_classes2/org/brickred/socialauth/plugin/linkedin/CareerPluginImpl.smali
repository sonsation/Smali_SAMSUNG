.class public Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;
.super Ljava/lang/Object;
.source "CareerPluginImpl.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/brickred/socialauth/plugin/CareerPlugin;


# static fields
.field private static final PROFILE_URL:Ljava/lang/String; = "http://api.linkedin.com/v1/people/~:(id,phone-numbers,headline,educations,positions,recommendations-received)"

.field private static final serialVersionUID:J = -0x180f99ef6305c132L


# instance fields
.field private final LOG:Lorg/apache/commons/logging/Log;

.field private providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;


# direct methods
.method public constructor <init>(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 1
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    .line 61
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 62
    return-void
.end method


# virtual methods
.method public getCareerDetails()Lorg/brickred/socialauth/Career;
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v47, v0

    const-string v48, "Fetching career details from http://api.linkedin.com/v1/people/~:(id,phone-numbers,headline,educations,positions,recommendations-received)"

    invoke-interface/range {v47 .. v48}, Lorg/apache/commons/logging/Log;->info(Ljava/lang/Object;)V

    .line 67
    const/16 v42, 0x0

    .line 69
    .local v42, "serviceResponse":Lorg/brickred/socialauth/util/Response;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    move-object/from16 v47, v0

    const-string v48, "http://api.linkedin.com/v1/people/~:(id,phone-numbers,headline,educations,positions,recommendations-received)"

    invoke-virtual/range {v47 .. v48}, Lorg/brickred/socialauth/util/ProviderSupport;->api(Ljava/lang/String;)Lorg/brickred/socialauth/util/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v42

    .line 78
    :try_start_1
    invoke-virtual/range {v42 .. v42}, Lorg/brickred/socialauth/util/Response;->getInputStream()Ljava/io/InputStream;

    move-result-object v47

    .line 77
    invoke-static/range {v47 .. v47}, Lorg/brickred/socialauth/util/XMLParseUtil;->loadXmlResource(Ljava/io/InputStream;)Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v39

    .line 84
    .local v39, "root":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 85
    .local v3, "career":Lorg/brickred/socialauth/Career;
    if-eqz v39, :cond_5

    .line 86
    new-instance v3, Lorg/brickred/socialauth/Career;

    .end local v3    # "career":Lorg/brickred/socialauth/Career;
    invoke-direct {v3}, Lorg/brickred/socialauth/Career;-><init>()V

    .line 87
    .restart local v3    # "career":Lorg/brickred/socialauth/Career;
    const/16 v16, 0x0

    .line 88
    .local v16, "educationsArr":[Lorg/brickred/socialauth/Education;
    const/16 v30, 0x0

    .line 89
    .local v30, "positionsArr":[Lorg/brickred/socialauth/Position;
    const/16 v34, 0x0

    .line 90
    .local v34, "recommendationsArr":[Lorg/brickred/socialauth/Recommendation;
    const-string v47, "headline"

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 91
    .local v19, "headline":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/Career;->setHeadline(Ljava/lang/String;)V

    .line 92
    const-string v47, "id"

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 93
    .local v21, "id":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/Career;->setId(Ljava/lang/String;)V

    .line 95
    const-string v47, "education"

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 96
    .local v15, "educations":Lorg/w3c/dom/NodeList;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    const-string v49, "Educations count "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-interface/range {v47 .. v48}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 98
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    move/from16 v0, v47

    new-array v0, v0, [Lorg/brickred/socialauth/Education;

    move-object/from16 v16, v0

    .line 99
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_0
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    move/from16 v0, v20

    move/from16 v1, v47

    if-lt v0, v1, :cond_6

    .line 145
    .end local v20    # "i":I
    :cond_0
    const-string v47, "position"

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v29

    .line 146
    .local v29, "positions":Lorg/w3c/dom/NodeList;
    if-eqz v29, :cond_1

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    const-string v49, "Positions count "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-interface/range {v47 .. v48}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 148
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    move/from16 v0, v47

    new-array v0, v0, [Lorg/brickred/socialauth/Position;

    move-object/from16 v30, v0

    .line 149
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_1
    invoke-interface/range {v29 .. v29}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    move/from16 v0, v20

    move/from16 v1, v47

    if-lt v0, v1, :cond_c

    .line 221
    .end local v20    # "i":I
    :cond_1
    const-string/jumbo v47, "recommendation"

    move-object/from16 v0, v39

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v33

    .line 222
    .local v33, "recommendations":Lorg/w3c/dom/NodeList;
    if-eqz v33, :cond_2

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->LOG:Lorg/apache/commons/logging/Log;

    move-object/from16 v47, v0

    new-instance v48, Ljava/lang/StringBuilder;

    const-string v49, "Recommendations count "

    invoke-direct/range {v48 .. v49}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v49

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 223
    invoke-interface/range {v47 .. v48}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 226
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    .line 225
    move/from16 v0, v47

    new-array v0, v0, [Lorg/brickred/socialauth/Recommendation;

    move-object/from16 v34, v0

    .line 227
    const/16 v20, 0x0

    .restart local v20    # "i":I
    :goto_2
    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    move/from16 v0, v20

    move/from16 v1, v47

    if-lt v0, v1, :cond_16

    .line 275
    .end local v20    # "i":I
    :cond_2
    if-eqz v16, :cond_3

    .line 276
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/Career;->setEducations([Lorg/brickred/socialauth/Education;)V

    .line 279
    :cond_3
    if-eqz v30, :cond_4

    .line 280
    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/Career;->setPositions([Lorg/brickred/socialauth/Position;)V

    .line 283
    :cond_4
    if-eqz v34, :cond_5

    .line 284
    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Lorg/brickred/socialauth/Career;->setRecommendations([Lorg/brickred/socialauth/Recommendation;)V

    .line 287
    .end local v15    # "educations":Lorg/w3c/dom/NodeList;
    .end local v16    # "educationsArr":[Lorg/brickred/socialauth/Education;
    .end local v19    # "headline":Ljava/lang/String;
    .end local v21    # "id":Ljava/lang/String;
    .end local v29    # "positions":Lorg/w3c/dom/NodeList;
    .end local v30    # "positionsArr":[Lorg/brickred/socialauth/Position;
    .end local v33    # "recommendations":Lorg/w3c/dom/NodeList;
    .end local v34    # "recommendationsArr":[Lorg/brickred/socialauth/Recommendation;
    :cond_5
    return-object v3

    .line 70
    .end local v3    # "career":Lorg/brickred/socialauth/Career;
    .end local v39    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v22

    .line 71
    .local v22, "ie":Ljava/lang/Exception;
    new-instance v47, Lorg/brickred/socialauth/exception/SocialAuthException;

    .line 72
    const-string v48, "Failed to retrieve the career details from http://api.linkedin.com/v1/people/~:(id,phone-numbers,headline,educations,positions,recommendations-received)"

    .line 71
    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lorg/brickred/socialauth/exception/SocialAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v47

    .line 79
    .end local v22    # "ie":Ljava/lang/Exception;
    :catch_1
    move-exception v11

    .line 80
    .local v11, "e":Ljava/lang/Exception;
    new-instance v47, Lorg/brickred/socialauth/exception/ServerDataException;

    .line 81
    const-string v48, "Failed to parse the career details from response.http://api.linkedin.com/v1/people/~:(id,phone-numbers,headline,educations,positions,recommendations-received)"

    .line 80
    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-direct {v0, v1, v11}, Lorg/brickred/socialauth/exception/ServerDataException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v47

    .line 100
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v3    # "career":Lorg/brickred/socialauth/Career;
    .restart local v15    # "educations":Lorg/w3c/dom/NodeList;
    .restart local v16    # "educationsArr":[Lorg/brickred/socialauth/Education;
    .restart local v19    # "headline":Ljava/lang/String;
    .restart local v20    # "i":I
    .restart local v21    # "id":Ljava/lang/String;
    .restart local v30    # "positionsArr":[Lorg/brickred/socialauth/Position;
    .restart local v34    # "recommendationsArr":[Lorg/brickred/socialauth/Recommendation;
    .restart local v39    # "root":Lorg/w3c/dom/Element;
    :cond_6
    new-instance v14, Lorg/brickred/socialauth/Education;

    invoke-direct {v14}, Lorg/brickred/socialauth/Education;-><init>()V

    .line 101
    .local v14, "educationObj":Lorg/brickred/socialauth/Education;
    move/from16 v0, v20

    invoke-interface {v15, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/w3c/dom/Element;

    .line 103
    .local v13, "educationEl":Lorg/w3c/dom/Element;
    const-string/jumbo v47, "school-name"

    .line 102
    move-object/from16 v0, v47

    invoke-static {v13, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 104
    .local v40, "schoolName":Ljava/lang/String;
    if-eqz v40, :cond_7

    .line 105
    move-object/from16 v0, v40

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Education;->setSchoolName(Ljava/lang/String;)V

    .line 108
    :cond_7
    const-string v47, "degree"

    .line 107
    move-object/from16 v0, v47

    invoke-static {v13, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 109
    .local v10, "degree":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 110
    invoke-virtual {v14, v10}, Lorg/brickred/socialauth/Education;->setDegree(Ljava/lang/String;)V

    .line 113
    :cond_8
    const-string v47, "field-of-study"

    .line 112
    move-object/from16 v0, v47

    invoke-static {v13, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 114
    .local v17, "fieldOfStudy":Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 115
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lorg/brickred/socialauth/Education;->setFieldOfStudy(Ljava/lang/String;)V

    .line 118
    :cond_9
    const-string/jumbo v47, "start-date"

    move-object/from16 v0, v47

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 119
    .local v41, "sd":Lorg/w3c/dom/NodeList;
    if-eqz v41, :cond_a

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_a

    .line 121
    const/16 v47, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    check-cast v47, Lorg/w3c/dom/Element;

    const-string/jumbo v48, "year"

    .line 120
    invoke-static/range {v47 .. v48}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 122
    .local v46, "year":Ljava/lang/String;
    if-eqz v46, :cond_a

    .line 123
    new-instance v5, Lorg/brickred/socialauth/util/DateComponents;

    invoke-direct {v5}, Lorg/brickred/socialauth/util/DateComponents;-><init>()V

    .line 124
    .local v5, "comp":Lorg/brickred/socialauth/util/DateComponents;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/DateComponents;->setYear(I)V

    .line 125
    invoke-virtual {v14, v5}, Lorg/brickred/socialauth/Education;->setStartDate(Lorg/brickred/socialauth/util/DateComponents;)V

    .line 129
    .end local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    .end local v46    # "year":Ljava/lang/String;
    :cond_a
    const-string v47, "end-date"

    move-object/from16 v0, v47

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 130
    .local v12, "ed":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_b

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_b

    .line 132
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    check-cast v47, Lorg/w3c/dom/Element;

    const-string/jumbo v48, "year"

    .line 131
    invoke-static/range {v47 .. v48}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 133
    .restart local v46    # "year":Ljava/lang/String;
    if-eqz v46, :cond_b

    .line 134
    new-instance v5, Lorg/brickred/socialauth/util/DateComponents;

    invoke-direct {v5}, Lorg/brickred/socialauth/util/DateComponents;-><init>()V

    .line 135
    .restart local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/DateComponents;->setYear(I)V

    .line 136
    invoke-virtual {v14, v5}, Lorg/brickred/socialauth/Education;->setEndDate(Lorg/brickred/socialauth/util/DateComponents;)V

    .line 140
    .end local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    .end local v46    # "year":Ljava/lang/String;
    :cond_b
    aput-object v14, v16, v20

    .line 99
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 150
    .end local v10    # "degree":Ljava/lang/String;
    .end local v12    # "ed":Lorg/w3c/dom/NodeList;
    .end local v13    # "educationEl":Lorg/w3c/dom/Element;
    .end local v14    # "educationObj":Lorg/brickred/socialauth/Education;
    .end local v17    # "fieldOfStudy":Ljava/lang/String;
    .end local v40    # "schoolName":Ljava/lang/String;
    .end local v41    # "sd":Lorg/w3c/dom/NodeList;
    .restart local v29    # "positions":Lorg/w3c/dom/NodeList;
    :cond_c
    new-instance v28, Lorg/brickred/socialauth/Position;

    invoke-direct/range {v28 .. v28}, Lorg/brickred/socialauth/Position;-><init>()V

    .line 151
    .local v28, "positionnObj":Lorg/brickred/socialauth/Position;
    move-object/from16 v0, v29

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    check-cast v27, Lorg/w3c/dom/Element;

    .line 152
    .local v27, "positionEl":Lorg/w3c/dom/Element;
    const-string v47, "id"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 153
    .local v26, "pid":Ljava/lang/String;
    if-eqz v26, :cond_d

    .line 154
    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Position;->setPositionId(Ljava/lang/String;)V

    .line 157
    :cond_d
    const-string/jumbo v47, "title"

    .line 156
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    .line 158
    .local v44, "title":Ljava/lang/String;
    if-eqz v44, :cond_e

    .line 159
    move-object/from16 v0, v28

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Position;->setTitle(Ljava/lang/String;)V

    .line 162
    :cond_e
    const-string v47, "is-current"

    .line 161
    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 163
    .local v24, "isCurrent":Ljava/lang/String;
    if-eqz v24, :cond_f

    .line 165
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v47

    .line 164
    move-object/from16 v0, v28

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Position;->setCurrentCompany(Z)V

    .line 167
    :cond_f
    const-string/jumbo v47, "start-date"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v41

    .line 168
    .restart local v41    # "sd":Lorg/w3c/dom/NodeList;
    if-eqz v41, :cond_10

    invoke-interface/range {v41 .. v41}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_10

    .line 170
    const/16 v47, 0x0

    move-object/from16 v0, v41

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    check-cast v47, Lorg/w3c/dom/Element;

    const-string/jumbo v48, "year"

    .line 169
    invoke-static/range {v47 .. v48}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 171
    .restart local v46    # "year":Ljava/lang/String;
    if-eqz v46, :cond_10

    .line 172
    new-instance v5, Lorg/brickred/socialauth/util/DateComponents;

    invoke-direct {v5}, Lorg/brickred/socialauth/util/DateComponents;-><init>()V

    .line 173
    .restart local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/DateComponents;->setYear(I)V

    .line 174
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/brickred/socialauth/Position;->setStartDate(Lorg/brickred/socialauth/util/DateComponents;)V

    .line 178
    .end local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    .end local v46    # "year":Ljava/lang/String;
    :cond_10
    const-string v47, "end-date"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 179
    .restart local v12    # "ed":Lorg/w3c/dom/NodeList;
    if-eqz v12, :cond_11

    invoke-interface {v12}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_11

    .line 181
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v47

    check-cast v47, Lorg/w3c/dom/Element;

    const-string/jumbo v48, "year"

    .line 180
    invoke-static/range {v47 .. v48}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 182
    .restart local v46    # "year":Ljava/lang/String;
    if-eqz v46, :cond_11

    .line 183
    new-instance v5, Lorg/brickred/socialauth/util/DateComponents;

    invoke-direct {v5}, Lorg/brickred/socialauth/util/DateComponents;-><init>()V

    .line 184
    .restart local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v47

    invoke-virtual {v5, v0}, Lorg/brickred/socialauth/util/DateComponents;->setYear(I)V

    .line 185
    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Lorg/brickred/socialauth/Position;->setEndDate(Lorg/brickred/socialauth/util/DateComponents;)V

    .line 191
    .end local v5    # "comp":Lorg/brickred/socialauth/util/DateComponents;
    .end local v46    # "year":Ljava/lang/String;
    :cond_11
    const-string v47, "company"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 192
    .local v8, "companyNodes":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_15

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_15

    .line 193
    const/16 v47, 0x0

    move/from16 v0, v47

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 195
    .local v7, "company":Lorg/w3c/dom/Element;
    const-string v47, "id"

    .line 194
    move-object/from16 v0, v47

    invoke-static {v7, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "compid":Ljava/lang/String;
    if-eqz v9, :cond_12

    .line 197
    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Lorg/brickred/socialauth/Position;->setCompanyId(Ljava/lang/String;)V

    .line 200
    :cond_12
    const-string v47, "name"

    .line 199
    move-object/from16 v0, v47

    invoke-static {v7, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "compName":Ljava/lang/String;
    if-eqz v6, :cond_13

    .line 202
    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lorg/brickred/socialauth/Position;->setCompanyName(Ljava/lang/String;)V

    .line 205
    :cond_13
    const-string v47, "industry"

    .line 204
    move-object/from16 v0, v47

    invoke-static {v7, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 206
    .local v23, "industry":Ljava/lang/String;
    if-eqz v23, :cond_14

    .line 207
    move-object/from16 v0, v28

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Position;->setIndustry(Ljava/lang/String;)V

    .line 210
    :cond_14
    const-string/jumbo v47, "type"

    .line 209
    move-object/from16 v0, v47

    invoke-static {v7, v0}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 211
    .local v45, "type":Ljava/lang/String;
    if-eqz v45, :cond_15

    .line 212
    move-object/from16 v0, v28

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Position;->setCompanyType(Ljava/lang/String;)V

    .line 215
    .end local v6    # "compName":Ljava/lang/String;
    .end local v7    # "company":Lorg/w3c/dom/Element;
    .end local v9    # "compid":Ljava/lang/String;
    .end local v23    # "industry":Ljava/lang/String;
    .end local v45    # "type":Ljava/lang/String;
    :cond_15
    aput-object v28, v30, v20

    .line 149
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 228
    .end local v8    # "companyNodes":Lorg/w3c/dom/NodeList;
    .end local v12    # "ed":Lorg/w3c/dom/NodeList;
    .end local v24    # "isCurrent":Ljava/lang/String;
    .end local v26    # "pid":Ljava/lang/String;
    .end local v27    # "positionEl":Lorg/w3c/dom/Element;
    .end local v28    # "positionnObj":Lorg/brickred/socialauth/Position;
    .end local v41    # "sd":Lorg/w3c/dom/NodeList;
    .end local v44    # "title":Ljava/lang/String;
    .restart local v33    # "recommendations":Lorg/w3c/dom/NodeList;
    :cond_16
    new-instance v32, Lorg/brickred/socialauth/Recommendation;

    invoke-direct/range {v32 .. v32}, Lorg/brickred/socialauth/Recommendation;-><init>()V

    .line 230
    .local v32, "recommendationObj":Lorg/brickred/socialauth/Recommendation;
    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v31

    .line 229
    check-cast v31, Lorg/w3c/dom/Element;

    .line 232
    .local v31, "recommendationEl":Lorg/w3c/dom/Element;
    const-string v47, "id"

    .line 231
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 233
    .local v38, "rid":Ljava/lang/String;
    if-eqz v38, :cond_17

    .line 234
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Recommendation;->setRecommendationId(Ljava/lang/String;)V

    .line 237
    :cond_17
    const-string/jumbo v47, "recommendation-text"

    .line 236
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 238
    .local v43, "text":Ljava/lang/String;
    if-eqz v43, :cond_18

    .line 239
    move-object/from16 v0, v32

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Recommendation;->setRecommendationText(Ljava/lang/String;)V

    .line 243
    :cond_18
    const-string v47, "code"

    .line 242
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 244
    .local v4, "code":Ljava/lang/String;
    if-eqz v4, :cond_19

    .line 245
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lorg/brickred/socialauth/Recommendation;->setRecommendationType(Ljava/lang/String;)V

    .line 249
    :cond_19
    const-string/jumbo v47, "recommender"

    move-object/from16 v0, v31

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v37

    .line 250
    .local v37, "recommenderNodes":Lorg/w3c/dom/NodeList;
    if-eqz v37, :cond_1c

    .line 251
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v47

    if-lez v47, :cond_1c

    .line 253
    const/16 v47, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v47

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    .line 252
    check-cast v35, Lorg/w3c/dom/Element;

    .line 255
    .local v35, "recommenderEl":Lorg/w3c/dom/Element;
    const-string v47, "id"

    .line 254
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 256
    .local v36, "recommenderId":Ljava/lang/String;
    if-eqz v36, :cond_1a

    .line 257
    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Recommendation;->setRecommenderId(Ljava/lang/String;)V

    .line 260
    :cond_1a
    const-string v47, "first-name"

    .line 259
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 261
    .local v18, "fname":Ljava/lang/String;
    if-eqz v18, :cond_1b

    .line 262
    move-object/from16 v0, v32

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Recommendation;->setRecommenderFirstName(Ljava/lang/String;)V

    .line 265
    :cond_1b
    const-string v47, "last-name"

    .line 264
    move-object/from16 v0, v35

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Lorg/brickred/socialauth/util/XMLParseUtil;->getElementData(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 266
    .local v25, "lname":Ljava/lang/String;
    if-eqz v25, :cond_1c

    .line 267
    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/brickred/socialauth/Recommendation;->setRecommenderLastName(Ljava/lang/String;)V

    .line 271
    .end local v18    # "fname":Ljava/lang/String;
    .end local v25    # "lname":Ljava/lang/String;
    .end local v35    # "recommenderEl":Lorg/w3c/dom/Element;
    .end local v36    # "recommenderId":Ljava/lang/String;
    :cond_1c
    aput-object v32, v34, v20

    .line 227
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2
.end method

.method public getProviderSupport()Lorg/brickred/socialauth/util/ProviderSupport;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    return-object v0
.end method

.method public setProviderSupport(Lorg/brickred/socialauth/util/ProviderSupport;)V
    .locals 0
    .param p1, "providerSupport"    # Lorg/brickred/socialauth/util/ProviderSupport;

    .prologue
    .line 297
    iput-object p1, p0, Lorg/brickred/socialauth/plugin/linkedin/CareerPluginImpl;->providerSupport:Lorg/brickred/socialauth/util/ProviderSupport;

    .line 298
    return-void
.end method
