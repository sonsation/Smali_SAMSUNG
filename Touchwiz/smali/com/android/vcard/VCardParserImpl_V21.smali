.class Lcom/android/vcard/VCardParserImpl_V21;
.super Ljava/lang/Object;
.source "VCardParserImpl_V21.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "8BIT"

.field private static final LOG_TAG:Ljava/lang/String; = "vCard"

.field private static final STATE_GROUP_OR_PROPERTY_NAME:I = 0x0

.field private static final STATE_PARAMS:I = 0x1

.field private static final STATE_PARAMS_IN_DQUOTE:I = 0x2


# instance fields
.field private mCanceled:Z

.field protected mCurrentCharset:Ljava/lang/String;

.field protected mCurrentEncoding:Ljava/lang/String;

.field protected final mIntermediateCharset:Ljava/lang/String;

.field private final mInterpreterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCustomLabel:Z

.field private mIsSSHParams:Z

.field private mIsShiftJis:Z

.field protected mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

.field protected final mUnknownTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUnknownValueSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    sget v0, Lcom/android/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    invoke-direct {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 168
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "vcardType"    # I

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 171
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "vcardType"    # I
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    .line 158
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    .line 176
    if-eqz p2, :cond_0

    .line 177
    iput-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 1157
    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 1174
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1161
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1162
    .local v2, "propertyName":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1170
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 1171
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1229
    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1230
    .local v0, "colonIndex":I
    if-le v0, v4, :cond_2

    .line 1231
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1235
    .local v2, "semiColonIndex":I
    if-ne v0, v4, :cond_0

    .line 1236
    move v1, v2

    .line 1242
    .local v1, "minIndex":I
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1244
    .end local v1    # "minIndex":I
    .end local v2    # "semiColonIndex":I
    :goto_1
    return-object v3

    .line 1237
    .restart local v2    # "semiColonIndex":I
    :cond_0
    if-ne v2, v4, :cond_1

    .line 1238
    move v1, v0

    .line 1239
    .restart local v1    # "minIndex":I
    goto :goto_0

    .line 1240
    .end local v1    # "minIndex":I
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .restart local v1    # "minIndex":I
    goto :goto_0

    .line 1244
    .end local v1    # "minIndex":I
    .end local v2    # "semiColonIndex":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x3d

    const/4 v5, 0x0

    .line 1111
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1113
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1114
    .local v2, "pos":I
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1117
    .local v0, "builder":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 1122
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 1123
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "File ended during parsing a Quoted-Printable String"

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1125
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 1128
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_2

    .line 1130
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const-string v3, "\r\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1133
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1139
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "pos":I
    .end local p1    # "firstString":Ljava/lang/String;
    :cond_4
    return-object p1
.end method

.method private handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "propertyRawValue"    # Ljava/lang/String;
    .param p3, "sourceCharset"    # Ljava/lang/String;
    .param p4, "targetCharset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1013
    .local v6, "encodedValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "QUOTED-PRINTABLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1021
    .local v11, "quotedPrintablePart":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v11, v0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v13

    .line 1027
    .local v13, "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_1

    .line 1077
    .end local v11    # "quotedPrintablePart":Ljava/lang/String;
    .end local v13    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_9

    .line 1081
    return-void

    .line 1027
    .restart local v11    # "quotedPrintablePart":Ljava/lang/String;
    .restart local v13    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1029
    .local v12, "quotedPrintableValue":Ljava/lang/String;
    const/16 v18, 0x0

    .line 1028
    move/from16 v0, v18

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v12, v0, v1, v2}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1030
    .local v5, "encoded":Ljava/lang/String;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 1032
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v18

    move/from16 v0, v18

    invoke-static {v5, v0}, Lcom/android/vcard/VCardUtils;->constructListFromShiftJisValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v14

    .line 1033
    .local v14, "shiftjisValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 1034
    .local v9, "propValue":Ljava/lang/String;
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1037
    .end local v9    # "propValue":Ljava/lang/String;
    .end local v14    # "shiftjisValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 1038
    .local v7, "firstSepIndex":I
    const/4 v3, 0x0

    .line 1039
    .local v3, "company":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1041
    .local v4, "department":Ljava/lang/String;
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_5

    .line 1042
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1043
    add-int/lit8 v18, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    add-int/lit8 v18, v7, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1044
    :goto_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1045
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1046
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1043
    :cond_3
    const-string v4, ""

    goto :goto_3

    .line 1048
    :cond_4
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1051
    :cond_5
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1056
    .end local v3    # "company":Ljava/lang/String;
    .end local v4    # "department":Ljava/lang/String;
    .end local v5    # "encoded":Ljava/lang/String;
    .end local v7    # "firstSepIndex":I
    .end local v11    # "quotedPrintablePart":Ljava/lang/String;
    .end local v12    # "quotedPrintableValue":Ljava/lang/String;
    .end local v13    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1059
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1058
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1060
    .local v10, "propertyValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v10, v0}, Lcom/android/vcard/VCardUtils;->constructListFromShiftJisValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 1062
    .local v16, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_7

    .line 1065
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    goto/16 :goto_1

    .line 1062
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1063
    .local v15, "value":Ljava/lang/String;
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1068
    .end local v10    # "propertyValue":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getPotentialMultiline(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1067
    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1070
    .restart local v10    # "propertyValue":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v17

    move/from16 v0, v17

    invoke-static {v10, v0}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v16

    .line 1071
    .restart local v16    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1072
    .restart local v15    # "value":Ljava/lang/String;
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1078
    .end local v10    # "propertyValue":Ljava/lang/String;
    .end local v15    # "value":Ljava/lang/String;
    .end local v16    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/vcard/VCardInterpreter;

    .line 1079
    .local v8, "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v8, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto/16 :goto_2
.end method

.method private handleNest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 422
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 425
    return-void

    .line 418
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 419
    .local v0, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_0

    .line 422
    .end local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 423
    .restart local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_1
.end method

.method private isAsciiLetter(C)Z
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 812
    const/16 v0, 0x61

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7a

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p1, v0, :cond_2

    .line 813
    :cond_1
    const/4 v0, 0x1

    .line 815
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 988
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 989
    .local v2, "size":I
    if-le v2, v4, :cond_2

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 992
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 999
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1003
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v4

    .line 992
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "i":I
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 993
    .local v3, "type":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_1

    .line 995
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1000
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local v3    # "type":Ljava/lang/String;
    :cond_2
    if-ne v2, v4, :cond_3

    .line 1001
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    .line 1003
    :cond_3
    const-string v4, ""

    goto :goto_1
.end method

.method private parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 4
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "propertyNameUpper"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "propertyRawValue":Ljava/lang/String;
    const-string v1, "AGENT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAgent(Lcom/android/vcard/VCardProperty;)V

    .line 415
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v1, ".*BDAY.*"

    invoke-virtual {p2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    const-string v1, "1"

    invoke-virtual {p1, v1}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 404
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/vcard/VCardParserImpl_V21;->isValidPropertyName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    const-string v1, "VERSION"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 408
    new-instance v1, Lcom/android/vcard/exception/VCardVersionException;

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Incompatible version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_4
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown property name: \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseOneVCard()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 242
    const-string v2, "8BIT"

    iput-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 243
    const-string v2, "UTF-8"

    iput-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "allowGarbage":Z
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 247
    const/4 v2, 0x0

    .line 256
    :goto_0
    return v2

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 252
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItems()V

    .line 253
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 256
    const/4 v2, 0x1

    goto :goto_0

    .line 249
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 250
    .local v1, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryStarted()V

    goto :goto_1

    .line 253
    .end local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vcard/VCardInterpreter;

    .line 254
    .restart local v1    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v1}, Lcom/android/vcard/VCardInterpreter;->onEntryEnded()V

    goto :goto_2
.end method

.method static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1288
    const/16 v0, 0x3c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_1

    .line 1289
    :cond_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1290
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 1295
    :goto_0
    return-object v0

    .line 1292
    :cond_1
    const/16 v0, 0x5c

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    .line 1293
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1295
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addInterpreter(Lcom/android/vcard/VCardInterpreter;)V
    .locals 1
    .param p1, "interpreter"    # Lcom/android/vcard/VCardInterpreter;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1343
    return-void
.end method

.method public final declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 1395
    monitor-enter p0

    :try_start_0
    const-string v0, "vCard"

    const-string v1, "ParserImpl received cancel operation."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    monitor-exit p0

    return-void

    .line 1395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;
    .locals 23
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v13, Lcom/android/vcard/VCardProperty;

    invoke-direct {v13}, Lcom/android/vcard/VCardProperty;-><init>()V

    .line 437
    .local v13, "propertyData":Lcom/android/vcard/VCardProperty;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v8

    .line 438
    .local v8, "length":I
    if-lez v8, :cond_0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x23

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 439
    new-instance v20, Lcom/android/vcard/exception/VCardInvalidCommentLineException;

    invoke-direct/range {v20 .. v20}, Lcom/android/vcard/exception/VCardInvalidCommentLineException;-><init>()V

    throw v20

    .line 442
    :cond_0
    const/4 v15, 0x0

    .line 443
    .local v15, "state":I
    const/4 v10, 0x0

    .line 445
    .local v10, "nameIndex":I
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isShiftJisAsDefault()Z

    move-result v9

    .line 447
    .local v9, "mIsShiftJisAsDefault":Z
    if-eqz v9, :cond_1

    .line 448
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    .line 452
    :cond_1
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v8, :cond_2

    .line 671
    new-instance v20, Lcom/android/vcard/exception/VCardInvalidLineException;

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "Invalid line: \""

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "\""

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/vcard/exception/VCardInvalidLineException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 453
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 454
    .local v3, "ch":C
    packed-switch v15, :pswitch_data_0

    .line 452
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 457
    :pswitch_0
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 458
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsSSHParams:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 459
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v8, v0, :cond_5

    .line 460
    if-nez v6, :cond_5

    .line 461
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 462
    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 463
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsSSHParams:Z

    .line 464
    const/4 v13, 0x0

    .line 625
    .end local v13    # "propertyData":Lcom/android/vcard/VCardProperty;
    :cond_4
    :goto_2
    return-object v13

    .line 465
    .restart local v13    # "propertyData":Lcom/android/vcard/VCardProperty;
    :cond_5
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 466
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsSSHParams:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 467
    const/16 v20, 0x2

    move/from16 v0, v20

    if-lt v8, v0, :cond_6

    .line 468
    if-nez v6, :cond_6

    .line 469
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x20

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 470
    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v21, 0x3a

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 471
    const/4 v13, 0x0

    goto :goto_2

    .line 473
    :cond_6
    const/16 v20, 0x3a

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    .line 474
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 475
    .local v14, "propertyName":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 476
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_7

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    :goto_3
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 479
    if-eqz v9, :cond_4

    .line 482
    const-string v20, "CHARSET="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 484
    const-string v18, "CHARSET=SHIFT_JIS"

    .line 485
    .local v18, "strCharSet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 486
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    goto :goto_2

    .line 476
    .end local v18    # "strCharSet":Ljava/lang/String;
    :cond_7
    const-string v20, ""

    goto :goto_3

    .line 491
    .end local v14    # "propertyName":Ljava/lang/String;
    :cond_8
    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    .line 492
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "groupName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_9

    .line 494
    const-string v20, "vCard"

    const-string v21, "Empty group found. Ignoring."

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_4
    add-int/lit8 v10, v6, 0x1

    .line 499
    goto/16 :goto_1

    .line 496
    :cond_9
    invoke-virtual {v13, v5}, Lcom/android/vcard/VCardProperty;->addGroup(Ljava/lang/String;)V

    goto :goto_4

    .line 499
    .end local v5    # "groupName":Ljava/lang/String;
    :cond_a
    const/16 v20, 0x3b

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 500
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 503
    .restart local v14    # "propertyName":Ljava/lang/String;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "X-SSH-VCARD-PARAMS"

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 504
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsSSHParams:Z

    .line 505
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 508
    :cond_b
    invoke-virtual {v13, v14}, Lcom/android/vcard/VCardProperty;->setName(Ljava/lang/String;)V

    .line 509
    add-int/lit8 v10, v6, 0x1

    .line 510
    const/4 v15, 0x1

    .line 513
    goto/16 :goto_1

    .line 516
    .end local v14    # "propertyName":Ljava/lang/String;
    :pswitch_1
    const/16 v20, 0x22

    move/from16 v0, v20

    if-ne v3, v0, :cond_d

    .line 517
    const-string v20, "2.1"

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 518
    const-string v20, "vCard"

    const-string v21, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_c
    const/4 v15, 0x2

    .line 522
    goto/16 :goto_1

    :cond_d
    const/16 v20, 0x3b

    move/from16 v0, v20

    if-ne v3, v0, :cond_18

    .line 524
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_17

    .line 526
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 527
    .local v12, "param":Ljava/lang/String;
    const-string v20, "="

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 528
    .local v17, "strArray":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 530
    const/16 v20, 0x0

    aget-object v20, v17, v20

    const-string v21, "CHARSET"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 531
    const/16 v20, 0x1

    aget-object v20, v17, v20

    const-string v21, "SHIFT_JIS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 532
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    .line 536
    :cond_e
    if-eqz v9, :cond_f

    .line 539
    const-string v20, "CHARSET="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 541
    const-string v18, "CHARSET=SHIFT_JIS"

    .line 542
    .restart local v18    # "strCharSet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 543
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    .line 548
    .end local v18    # "strCharSet":Ljava/lang/String;
    :cond_f
    const-string v11, ""

    .line 549
    .local v11, "nextChar":Ljava/lang/String;
    add-int/lit8 v20, v8, -0x1

    add-int/lit8 v21, v10, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    .line 550
    add-int/lit8 v20, v10, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 551
    .local v4, "customPrefix":Ljava/lang/String;
    const-string v20, "X-"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "SOUND"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 552
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    .line 554
    .end local v4    # "customPrefix":Ljava/lang/String;
    :cond_10
    const/4 v7, 0x1

    .local v7, "index":I
    :goto_5
    const/16 v20, 0x9

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    .line 558
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "TEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 559
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "EMAIL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 560
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ADR"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

    .line 561
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ORG"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_16

    .line 562
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_15

    .line 563
    const-string v20, "CHARSET="

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_12

    const-string v20, "ENCODING"

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 564
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 565
    add-int/lit8 v10, v6, 0x1

    .line 567
    goto/16 :goto_1

    .line 555
    :cond_13
    add-int v20, v6, v7

    move/from16 v0, v20

    if-ge v0, v8, :cond_14

    .line 556
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int v21, v6, v7

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 554
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 568
    :cond_15
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 569
    add-int/lit8 v10, v6, 0x1

    .line 571
    goto/16 :goto_1

    .line 572
    :cond_16
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 573
    add-int/lit8 v10, v6, 0x1

    .line 575
    goto/16 :goto_1

    .line 576
    .end local v7    # "index":I
    .end local v11    # "nextChar":Ljava/lang/String;
    .end local v12    # "param":Ljava/lang/String;
    .end local v17    # "strArray":[Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 577
    add-int/lit8 v10, v6, 0x1

    .line 579
    goto/16 :goto_1

    :cond_18
    const/16 v20, 0x3a

    move/from16 v0, v20

    if-ne v3, v0, :cond_24

    .line 581
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_22

    .line 582
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 583
    .restart local v12    # "param":Ljava/lang/String;
    const-string v20, "="

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v17

    .line 584
    .restart local v17    # "strArray":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_19

    .line 585
    const-string v20, "CHARSET"

    const/16 v21, 0x0

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    .line 586
    const-string v20, "SHIFT_JIS"

    const/16 v21, 0x1

    aget-object v21, v17, v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    .line 587
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    .line 596
    :cond_19
    :goto_6
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "TEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1c

    .line 598
    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    const-string v21, ":"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 599
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 600
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_1b

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    :goto_7
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 601
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    goto/16 :goto_2

    .line 590
    :cond_1a
    const-string v20, "CHARSET="

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_19

    if-eqz v9, :cond_19

    .line 591
    const-string v18, "CHARSET=SHIFT_JIS"

    .line 592
    .restart local v18    # "strCharSet":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 593
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    goto :goto_6

    .line 600
    .end local v18    # "strCharSet":Ljava/lang/String;
    :cond_1b
    const-string v20, ""

    goto :goto_7

    .line 604
    :cond_1c
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    .line 605
    const-string v21, "EMAIL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1d

    .line 606
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ADR"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1d

    .line 607
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ORG"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    .line 608
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_20

    .line 609
    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    .line 610
    .local v19, "temp":Ljava/lang/String;
    const-string v20, "CHARSET"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_1e

    const-string v20, "ENCODING"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 611
    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 612
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_1f

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    :goto_8
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 614
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    goto/16 :goto_2

    .line 613
    :cond_1f
    const-string v20, ""

    goto :goto_8

    .line 618
    .end local v19    # "temp":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 619
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_21

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    :goto_9
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_21
    const-string v20, ""

    goto :goto_9

    .line 623
    .end local v12    # "param":Ljava/lang/String;
    .end local v17    # "strArray":[Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v13, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 624
    add-int/lit8 v20, v8, -0x1

    move/from16 v0, v20

    if-ge v6, v0, :cond_23

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    :goto_a
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_23
    const-string v20, ""

    goto :goto_a

    .line 627
    :cond_24
    const/16 v20, 0x20

    move/from16 v0, v20

    if-ne v3, v0, :cond_25

    .line 628
    add-int/lit8 v10, v6, 0x1

    .line 629
    goto/16 :goto_1

    :cond_25
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v20, 0x58

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 630
    add-int/lit8 v20, v10, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 631
    .restart local v4    # "customPrefix":Ljava/lang/String;
    const-string v20, "X-"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_26

    .line 632
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "SOUND"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_26

    .line 633
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    .line 634
    :cond_26
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "TEL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_27

    .line 635
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "EMAIL"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_27

    .line 636
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ADR"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_27

    .line 637
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "ORG"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_27

    .line 638
    invoke-virtual {v13}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v20

    const-string v21, "TITLE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 639
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsCustomLabel:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 641
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    move/from16 v20, v0

    if-eqz v20, :cond_28

    .line 643
    const-string v20, "ISO-8859-1"

    const-string v21, "Shift_JIS"

    .line 642
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 644
    .local v16, "str":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    .line 645
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/vcard/VCardParserImpl_V21;->mIsShiftJis:Z

    .line 651
    :goto_b
    move-object/from16 p1, v16

    .line 655
    goto/16 :goto_1

    .line 648
    .end local v16    # "str":Ljava/lang/String;
    :cond_28
    const-string v20, "ISO-8859-1"

    const-string v21, "UTF-8"

    .line 647
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 649
    .restart local v16    # "str":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v8

    goto :goto_b

    .line 658
    .end local v4    # "customPrefix":Ljava/lang/String;
    .end local v16    # "str":Ljava/lang/String;
    :pswitch_2
    const/16 v20, 0x22

    move/from16 v0, v20

    if-ne v3, v0, :cond_3

    .line 659
    const-string v20, "2.1"

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_29

    .line 660
    const-string v20, "vCard"

    const-string v21, "Double-quoted params found in vCard 2.1. Silently allow it"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_29
    const/4 v15, 0x1

    .line 665
    goto/16 :goto_1

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected getAvailableEncodingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sAvailableEncoding:Ljava/util/Set;

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1179
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    :goto_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v1

    .line 1183
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1184
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "File ended during parsing BASE64 binary"

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1194
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->getPropertyNameUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, "propertyName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1196
    const-string v3, "vCard"

    const-string v4, "Found a next property during parsing a BASE64 string, which must not contain semi-colon or colon. Treat the line as next property."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const-string v3, "vCard"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problematic line: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1204
    :cond_2
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 1206
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1209
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected getCurrentCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    return-object v0
.end method

.method protected getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1334
    const-string v0, "UTF-8"

    return-object v0
.end method

.method protected getDefaultEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    const-string v0, "8BIT"

    return-object v0
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1314
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownTypeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1318
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getKnownValueSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1322
    sget-object v0, Lcom/android/vcard/VCardParser_V21;->sKnownValueSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v2}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v2, "ADR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "X-CUSTOM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v2}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "nextLine":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    .end local v1    # "nextLine":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "line":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 225
    new-instance v1, Lcom/android/vcard/exception/VCardException;

    const-string v2, "Reached end of buffer."

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 226
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 227
    return-object v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 1303
    const/4 v0, 0x0

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1310
    const-string v0, "2.1"

    return-object v0
.end method

.method protected handleAgent(Lcom/android/vcard/VCardProperty;)V
    .locals 3
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1256
    invoke-virtual {p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BEGIN:VCARD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1261
    return-void

    .line 1258
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1259
    .local v0, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_0

    .line 1263
    .end local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_1
    new-instance v1, Lcom/android/vcard/exception/VCardAgentNotSupportedException;

    const-string v2, "AGENT Property is not supported now."

    invoke-direct {v1, v2}, Lcom/android/vcard/exception/VCardAgentNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 823
    invoke-virtual {p1, p2, p3}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method protected handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "charsetval"    # Ljava/lang/String;

    .prologue
    .line 786
    iput-object p2, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentCharset:Ljava/lang/String;

    .line 787
    const-string v0, "CHARSET"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    return-void
.end method

.method protected handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "pencodingval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getAvailableEncodingSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    :cond_0
    const-string v0, "ENCODING"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 776
    return-void

    .line 774
    :cond_1
    new-instance v0, Lcom/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown encoding \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 7
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "langval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 795
    const-string v4, "-"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 796
    .local v2, "strArray":[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 797
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid Language: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 799
    :cond_0
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 808
    const-string v4, "LANGUAGE"

    invoke-virtual {p1, v4, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    return-void

    .line 799
    :cond_1
    aget-object v3, v2, v4

    .line 800
    .local v3, "tmp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 801
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 799
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 802
    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/vcard/VCardParserImpl_V21;->isAsciiLetter(C)Z

    move-result v6

    if-nez v6, :cond_3

    .line 803
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid Language: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 801
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 733
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 734
    return-void
.end method

.method protected handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 8
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 696
    const-string v5, "="

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 697
    .local v4, "strArray":[Ljava/lang/String;
    array-length v5, v4

    if-ne v5, v6, :cond_8

    .line 698
    aget-object v5, v4, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, "paramName":Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 700
    .local v1, "paramValue":Ljava/lang/String;
    const-string v5, "TYPE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 701
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 727
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 702
    .restart local v0    # "paramName":Ljava/lang/String;
    .restart local v1    # "paramValue":Ljava/lang/String;
    :cond_1
    const-string v5, "VALUE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 703
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_2
    const-string v5, "ENCODING"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 705
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleEncoding(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_3
    const-string v5, "CHARSET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 707
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleCharset(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_4
    const-string v5, "LANGUAGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 709
    invoke-virtual {p0, p1, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleLanguage(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 710
    :cond_5
    const-string v5, "X-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 711
    const-string v5, "X-CUSTOM"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 712
    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, "str1":Ljava/lang/String;
    const-string v5, "ISO-8859-1"

    const-string v6, "UTF-8"

    invoke-static {v2, v7, v5, v6}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "str2":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "X-"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v5}, Lcom/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto :goto_0

    .line 717
    .end local v2    # "str1":Ljava/lang/String;
    .end local v3    # "str2":Ljava/lang/String;
    :cond_6
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_7
    const-string v5, "X_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 722
    new-instance v5, Lcom/android/vcard/exception/VCardException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown type \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 725
    .end local v0    # "paramName":Ljava/lang/String;
    .end local v1    # "paramValue":Ljava/lang/String;
    :cond_8
    aget-object v5, v4, v7

    invoke-virtual {p0, p1, v5}, Lcom/android/vcard/VCardParserImpl_V21;->handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 27
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    .line 829
    .local v13, "propertyNameUpper":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v14

    .line 831
    .local v14, "propertyRawValue":Ljava/lang/String;
    const-string v19, "ISO-8859-1"

    .line 833
    .local v19, "sourceCharset":Ljava/lang/String;
    const-string v22, "CHARSET"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v5

    .line 835
    .local v5, "charsetCollection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v20, v22

    .line 836
    .local v20, "targetCharset":Ljava/lang/String;
    :goto_0
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 837
    const-string v20, "UTF-8"

    .line 841
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "EUC-KR"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 842
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 850
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 851
    const-string v22, "ADR"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 852
    const-string v22, "ORG"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 853
    const-string v22, "N"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 854
    const-string v22, "SOUND"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 856
    const-string v22, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 857
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    :cond_3
    :goto_2
    return-void

    .line 835
    .end local v20    # "targetCharset":Ljava/lang/String;
    :cond_4
    const/16 v20, 0x0

    goto :goto_0

    .line 844
    .restart local v20    # "targetCharset":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "SHIFT_JIS"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_1

    .line 859
    :cond_6
    const-string v22, "ADR"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 860
    const-string v22, "ORG"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 861
    const-string v22, "N"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 862
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/android/vcard/VCardParserImpl_V21;->handleAdrOrgN(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 866
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "QUOTED-PRINTABLE"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_9

    .line 870
    const-string v22, "FN"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 871
    const-string v22, "ENCODING"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->getParameters(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v22

    if-nez v22, :cond_c

    .line 872
    invoke-static {v14}, Lcom/android/vcard/VCardUtils;->appearsLikeAndroidVCardQuotedPrintable(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_c

    .line 874
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->getQuotedPrintablePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 877
    .local v16, "quotedPrintablePart":Ljava/lang/String;
    const/16 v22, 0x0

    .line 876
    move-object/from16 v0, v16

    move/from16 v1, v22

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 878
    .local v12, "propertyEncodedValue":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setRawValue(Ljava/lang/String;)V

    .line 881
    const-string v22, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 882
    const-string v22, "vnd.android.cursor.item/relation"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_b

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v22

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 885
    .local v18, "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v8, "encodedValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-nez v23, :cond_a

    .line 891
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 895
    .end local v8    # "encodedValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 896
    .local v10, "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_5

    .line 886
    .end local v10    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    .restart local v8    # "encodedValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 888
    .local v17, "quotedPrintableValue":Ljava/lang/String;
    const/16 v23, 0x0

    .line 887
    move-object/from16 v0, v17

    move/from16 v1, v23

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/vcard/VCardUtils;->parseQuotedPrintable(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 889
    .local v7, "encoded":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 893
    .end local v7    # "encoded":Ljava/lang/String;
    .end local v8    # "encodedValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "quotedPrintableValue":Ljava/lang/String;
    .end local v18    # "quotedPrintableValueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_b
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v12, v22, v23

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setValues([Ljava/lang/String;)V

    goto :goto_4

    .line 898
    .end local v12    # "propertyEncodedValue":Ljava/lang/String;
    .end local v16    # "quotedPrintablePart":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "BASE64"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_d

    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "B"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 903
    :cond_d
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/vcard/VCardParserImpl_V21;->getBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardProperty;->setByteValue([B)V

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 905
    .restart local v10    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_6

    .line 907
    .end local v10    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :catch_0
    move-exception v6

    .line 908
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "vCard"

    const-string v23, "Cannot decode Base64"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 910
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v9

    .line 911
    .local v9, "error":Ljava/lang/OutOfMemoryError;
    const-string v22, "vCard"

    const-string v23, "OutOfMemoryError happened during parsing BASE64 data!"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 913
    .restart local v10    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_7

    .line 917
    .end local v9    # "error":Ljava/lang/OutOfMemoryError;
    .end local v10    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "7BIT"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "8BIT"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "X-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_f

    .line 919
    const-string v22, "vCard"

    .line 920
    const-string v23, "The encoding \"%s\" is unsupported by vCard %s"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    move-object/from16 v26, v0

    aput-object v26, v24, v25

    const/16 v25, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    .line 920
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 919
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v22

    if-nez v22, :cond_12

    .line 947
    const/4 v4, 0x0

    .line 949
    .local v4, "builder":Ljava/lang/StringBuilder;
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->peekLine()Ljava/lang/String;

    move-result-object v11

    .line 956
    .local v11, "nextLine":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 957
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x20

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_11

    .line 958
    const-string v22, "END:VCARD"

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_11

    .line 959
    invoke-virtual/range {p0 .. p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    .line 961
    if-nez v4, :cond_10

    .line 962
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4    # "builder":Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 963
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 965
    :cond_10
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 970
    :cond_11
    if-eqz v4, :cond_12

    .line 971
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 975
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v11    # "nextLine":Ljava/lang/String;
    :cond_12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 976
    .local v15, "propertyValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v14, v0, v1}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardParserImpl_V21;->maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 978
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 979
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/vcard/VCardProperty;->setValues(Ljava/util/List;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/vcard/VCardInterpreter;

    .line 981
    .restart local v10    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    move-object/from16 v0, p1

    invoke-interface {v10, v0}, Lcom/android/vcard/VCardInterpreter;->onPropertyCreated(Lcom/android/vcard/VCardProperty;)V

    goto :goto_9
.end method

.method protected handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "ptypeval"    # Ljava/lang/String;

    .prologue
    .line 740
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownTypeSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 744
    const-string v0, "vCard"

    const-string v1, "TYPE unsupported by %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    const-string v0, "TYPE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method protected handleValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "pvalueval"    # Ljava/lang/String;

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownValueSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 754
    const-string v0, "X-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 755
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownValueSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 757
    const-string v0, "vCard"

    .line 758
    const-string v1, "The value unsupported by TYPE of %s: "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 757
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    const-string v0, "VALUE"

    invoke-virtual {p1, v0, p2}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    return-void
.end method

.method protected isCheckEscapeChar(Ljava/lang/String;)Z
    .locals 3
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 675
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 684
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 676
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-le v1, v2, :cond_2

    .line 677
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 678
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_2

    .line 679
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_2

    .line 680
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-eq v1, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    .line 681
    const/4 v1, 0x0

    goto :goto_1

    .line 675
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected isValidPropertyName(Ljava/lang/String;)Z
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getKnownPropertyNameSet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string v0, "X-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mUnknownTypeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    const-string v0, "vCard"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Property name unsupported by vCard 2.1: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 1280
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V21;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1271
    return-object p1
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1346
    if-nez p1, :cond_0

    .line 1347
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "InputStream must not be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1350
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v1, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1351
    .local v1, "tmpReader":Ljava/io/InputStreamReader;
    new-instance v4, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v4, v1}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1354
    .local v2, "start":J
    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1360
    :cond_1
    monitor-enter p0

    .line 1361
    :try_start_0
    iget-boolean v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCanceled:Z

    if-eqz v4, :cond_3

    .line 1362
    const-string v4, "vCard"

    const-string v5, "Cancel request has come. exitting parse operation."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1371
    :goto_1
    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1374
    return-void

    .line 1354
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1355
    .local v0, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 1360
    .end local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_3
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1366
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1360
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 1371
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1372
    .restart local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_2
.end method

.method protected parseItem()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 330
    const-string v6, "8BIT"

    iput-object v6, p0, Lcom/android/vcard/VCardParserImpl_V21;->mCurrentEncoding:Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getNonEmptyLine()Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "line":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardParserImpl_V21;->constructPropertyData(Ljava/lang/String;)Lcom/android/vcard/VCardProperty;

    move-result-object v1

    .line 336
    .local v1, "propertyData":Lcom/android/vcard/VCardProperty;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v1, :cond_0

    .line 390
    :goto_0
    return v4

    .line 340
    :cond_0
    invoke-virtual {v1}, Lcom/android/vcard/VCardProperty;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, "propertyNameUpper":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/vcard/VCardProperty;->getRawValue()Ljava/lang/String;

    move-result-object v3

    .line 343
    .local v3, "propertyRawValue":Ljava/lang/String;
    invoke-static {}, Lcom/android/vcard/VCardConfig;->isJapanSpacialized()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 344
    const-string v6, "BEGIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 345
    const-string v5, "VCARD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->handleNest()V

    goto :goto_0

    .line 348
    :cond_1
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown BEGIN type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 350
    :cond_2
    const-string v6, "END"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 351
    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    .line 352
    goto :goto_0

    .line 354
    :cond_3
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown END type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 356
    :cond_4
    const-string v5, "PHOTO"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 357
    const-string v5, "X-ANDROID-CUSTOM"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 362
    const-string v5, "VERSION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 363
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersionString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 364
    new-instance v4, Lcom/android/vcard/exception/VCardVersionException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Incompatible version: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " != "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardVersionException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 367
    :cond_5
    invoke-virtual {p0, v1, v2}, Lcom/android/vcard/VCardParserImpl_V21;->handlePropertyValue(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/android/vcard/VCardParserImpl_V21;->parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 374
    :cond_7
    const-string v6, "BEGIN"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 375
    const-string v5, "VCARD"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 376
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->handleNest()V

    goto/16 :goto_0

    .line 378
    :cond_8
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown BEGIN type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 380
    :cond_9
    const-string v6, "END"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 381
    const-string v4, "VCARD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    .line 382
    goto/16 :goto_0

    .line 384
    :cond_a
    new-instance v4, Lcom/android/vcard/exception/VCardException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown END type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 387
    :cond_b
    invoke-direct {p0, v1, v2}, Lcom/android/vcard/VCardParserImpl_V21;->parseItemInter(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected parseItems()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 308
    .local v1, "ended":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    if-eqz v1, :cond_0

    .line 320
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v2, "vCard"

    const-string v3, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    .end local v0    # "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseItem()Z
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardInvalidCommentLineException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 316
    :catch_1
    move-exception v0

    .line 317
    .restart local v0    # "e":Lcom/android/vcard/exception/VCardInvalidCommentLineException;
    const-string v2, "vCard"

    const-string v3, "Invalid line which looks like some comment was found. Ignored."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public parseOne(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 1377
    if-nez p1, :cond_0

    .line 1378
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "InputStream must not be null."

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1381
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mIntermediateCharset:Ljava/lang/String;

    invoke-direct {v1, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1382
    .local v1, "tmpReader":Ljava/io/InputStreamReader;
    new-instance v4, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-direct {v4, v1}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    .line 1384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1385
    .local v2, "start":J
    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1388
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;->parseOneVCard()Z

    .line 1389
    iget-object v4, p0, Lcom/android/vcard/VCardParserImpl_V21;->mInterpreterList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1392
    return-void

    .line 1385
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1386
    .local v0, "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardStarted()V

    goto :goto_0

    .line 1389
    .end local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vcard/VCardInterpreter;

    .line 1390
    .restart local v0    # "interpreter":Lcom/android/vcard/VCardInterpreter;
    invoke-interface {v0}, Lcom/android/vcard/VCardInterpreter;->onVCardEnded()V

    goto :goto_1
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 8
    .param p1, "allowGarbage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/android/vcard/VCardParserImpl_V21;->getLine()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 285
    :goto_0
    return v3

    .line 272
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 276
    const-string v5, ":"

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, "strArray":[Ljava/lang/String;
    array-length v0, v2

    .line 283
    .local v0, "length":I
    if-ne v0, v7, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BEGIN"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 284
    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VCARD"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    if-nez p1, :cond_3

    .line 287
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected String \"BEGIN:VCARD\" did not come (Instead, \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" came)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 290
    :cond_3
    if-nez p1, :cond_0

    .line 292
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string v4, "Reached where must not be reached."

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
