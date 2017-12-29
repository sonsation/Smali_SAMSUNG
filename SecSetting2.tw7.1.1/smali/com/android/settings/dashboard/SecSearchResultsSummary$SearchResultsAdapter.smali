.class Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecSearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SecSearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation


# instance fields
.field private hooking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQuery:Ljava/lang/String;

.field private realCnt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 917
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 906
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    .line 915
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    .line 918
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 919
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 920
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 921
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->hooking:Ljava/util/HashMap;

    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    .line 917
    return-void
.end method

.method private calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "findStr"    # Ljava/lang/String;
    .param p2, "srcStr"    # Ljava/lang/String;

    .prologue
    .line 1129
    const/4 v0, -0x1

    .line 1131
    .local v0, "offset":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1132
    invoke-direct {p0, p2, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1134
    :cond_0
    const-string/jumbo v1, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    return v0
.end method

.method private constructList()V
    .locals 28

    .prologue
    .line 930
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 931
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v22, "cachedKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "SearchTest"

    const-string/jumbo v4, "Basic search"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v4, v3, v1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getSearchResultSection(IILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v23

    .line 936
    .local v23, "orgBasicSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getSearchResults(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v21

    .line 937
    .local v21, "basicSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 941
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getCountFromDB()I

    move-result v26

    .line 942
    .local v26, "totalCnt":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    move/from16 v0, v26

    if-ne v3, v0, :cond_1

    return-void

    .line 945
    :cond_1
    const-string/jumbo v3, "SearchTest"

    const-string/jumbo v4, "Related search"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v3, v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getSearchResultSection(IILjava/util/List;)Ljava/util/ArrayList;

    move-result-object v24

    .line 947
    .local v24, "orgRelatedSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v3}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getSearchResults(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v25

    .line 948
    .local v25, "relatedSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    new-instance v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f0b0266

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 951
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 950
    invoke-direct/range {v3 .. v20}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 929
    :cond_2
    return-void
.end method

.method private findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "queryStr"    # Ljava/lang/String;

    .prologue
    .line 1166
    new-instance v11, Ljava/util/StringTokenizer;

    const-string/jumbo v13, " "

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    .local v11, "tokenizerQueryStr":Ljava/util/StringTokenizer;
    const-string/jumbo v6, ""

    .line 1169
    .local v6, "pastTokenStr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1170
    .local v3, "optimumOffset":I
    const/4 v2, -0x1

    .line 1171
    .local v2, "currentTempLength":I
    const/4 v5, -0x1

    .line 1172
    .local v5, "pastTempLength":I
    const/4 v4, -0x1

    .line 1173
    .local v4, "pastOffset":I
    const/4 v1, -0x1

    .line 1175
    .local v1, "bestMatchedOffset":I
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1176
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1178
    .local v9, "tokenQueryStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 1179
    const/4 v7, 0x0

    .line 1180
    .local v7, "startOffset":I
    move-object/from16 v8, p1

    .line 1182
    .local v8, "tempStr":Ljava/lang/String;
    :goto_1
    const-string/jumbo v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1183
    add-int/lit8 v7, v7, 0x1

    .line 1184
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1187
    :cond_1
    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v13, " "

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .local v12, "tokenizerStr":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1190
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 1192
    .local v10, "tokenStr":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1193
    if-ge v1, v7, :cond_2

    .line 1194
    move v1, v7

    .line 1215
    .end local v10    # "tokenStr":Ljava/lang/String;
    :cond_2
    const/4 v13, -0x1

    if-eq v1, v13, :cond_7

    .line 1216
    move v3, v1

    .line 1224
    .end local v7    # "startOffset":I
    .end local v8    # "tempStr":Ljava/lang/String;
    .end local v9    # "tokenQueryStr":Ljava/lang/String;
    .end local v12    # "tokenizerStr":Ljava/util/StringTokenizer;
    :cond_3
    return v3

    .line 1198
    .restart local v7    # "startOffset":I
    .restart local v8    # "tempStr":Ljava/lang/String;
    .restart local v9    # "tokenQueryStr":Ljava/lang/String;
    .restart local v10    # "tokenStr":Ljava/lang/String;
    .restart local v12    # "tokenizerStr":Ljava/util/StringTokenizer;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    .line 1199
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    .line 1201
    const/4 v13, -0x1

    if-eq v5, v13, :cond_5

    if-lt v5, v2, :cond_6

    .line 1202
    :cond_5
    invoke-direct {p0, v9, v6, v10}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1203
    move v5, v2

    .line 1204
    move-object v6, v10

    .line 1206
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1207
    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    .line 1206
    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 1205
    add-int v4, v7, v13

    .line 1212
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v7, v13

    goto :goto_2

    .line 1218
    .end local v10    # "tokenStr":Ljava/lang/String;
    :cond_7
    const/4 v13, -0x1

    if-eq v3, v13, :cond_8

    if-le v3, v4, :cond_0

    .line 1219
    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1228
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1230
    .local v0, "paint":Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    .line 1231
    :cond_0
    return-object v3

    .line 1230
    :cond_1
    if-eqz p2, :cond_0

    .line 1233
    const/4 v1, 0x0

    .line 1234
    .local v1, "prefixForIndian":[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v0, p2, v2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 1236
    .local v1, "prefixForIndian":[C
    if-nez v1, :cond_2

    .line 1237
    return-object v3

    .line 1239
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private getSearchResultSection(IILjava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "fromIdx"    # I
    .param p2, "toIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 959
    .local p3, "cachedKeyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v2, "orgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 961
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItemFromDB(I)Ljava/lang/Object;

    move-result-object v1

    .line 962
    .local v1, "obj":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 960
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v1

    .line 964
    check-cast v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    .line 965
    .local v3, "result":Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
    iget-object v4, v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 966
    iget-object v4, v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 967
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 969
    :cond_1
    const-string/jumbo v4, "SearchTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "already added : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 972
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v3    # "result":Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
    :cond_2
    return-object v2
.end method

.method private getSearchResults(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 25
    .param p2, "isPathVisible"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 976
    .local p1, "orgSearchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .local v24, "searchList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;>;"
    const-string/jumbo v22, ""

    .line 979
    .local v22, "prevPath":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 980
    .local v20, "count":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 981
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    .line 983
    .local v23, "result":Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 984
    const-string/jumbo v2, "SearchTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 980
    :cond_0
    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 987
    :cond_1
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 991
    if-eqz p2, :cond_2

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 995
    :cond_2
    :goto_2
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 997
    const-string/jumbo v2, "SearchTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")title = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 992
    :cond_3
    new-instance v2, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 993
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 992
    invoke-direct/range {v2 .. v19}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1002
    .end local v23    # "result":Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
    :cond_4
    return-object v24
.end method

.method private isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "before"    # Ljava/lang/String;
    .param p3, "current"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1139
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1140
    .local v3, "positionA":I
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1142
    .local v4, "positionB":I
    if-eq v3, v9, :cond_0

    if-ne v4, v9, :cond_1

    .line 1143
    :cond_0
    return v8

    .line 1146
    :cond_1
    if-le v3, v4, :cond_2

    .line 1147
    return v8

    .line 1148
    :cond_2
    if-ne v3, v4, :cond_7

    .line 1149
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1151
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_6

    .line 1152
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int v2, v5, v6

    .line 1153
    .local v2, "index":I
    if-gez v2, :cond_4

    .line 1154
    return v7

    .line 1149
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_3
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "count":I
    goto :goto_0

    .line 1155
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_4
    if-lez v2, :cond_5

    .line 1156
    return v8

    .line 1151
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1159
    .end local v2    # "index":I
    :cond_6
    return v7

    .line 1161
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_7
    return v7
.end method

.method private setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "sub"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xd2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1292
    const/4 v2, 0x0

    .line 1293
    .local v2, "subTitleLength":I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1294
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1295
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1296
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1297
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1300
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v7, :cond_3

    .line 1301
    const/4 v1, 0x0

    .line 1303
    .local v1, "spanStr":Landroid/text/SpannableString;
    invoke-direct {p0, p3, p2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1305
    .local v0, "offset":I
    if-ltz v0, :cond_2

    .line 1306
    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;

    move-result-object v1

    .line 1307
    .local v1, "spanStr":Landroid/text/SpannableString;
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/TextView;->semSetEllipsize(Landroid/text/TextUtils$TruncateAt;II)V

    .line 1311
    :goto_0
    const-string/jumbo v3, "SearchResultsSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "spanStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    .end local v0    # "offset":I
    .end local v1    # "spanStr":Landroid/text/SpannableString;
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1291
    :cond_1
    return-void

    .line 1309
    .restart local v0    # "offset":I
    .local v1, "spanStr":Landroid/text/SpannableString;
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "spanStr":Landroid/text/SpannableString;
    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .local v1, "spanStr":Landroid/text/SpannableString;
    goto :goto_0

    .line 1314
    .end local v0    # "offset":I
    .end local v1    # "spanStr":Landroid/text/SpannableString;
    :cond_3
    invoke-virtual {p2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1317
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1318
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1321
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1028
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCountFromDB()I
    .locals 3

    .prologue
    .line 1033
    iget-boolean v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1034
    const/4 v0, 0x0

    .line 1036
    .local v0, "cnt":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1040
    :goto_0
    return v0

    .line 1037
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 1060
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemFromDB(I)Ljava/lang/Object;
    .locals 28
    .param p1, "position"    # I

    .prologue
    .line 1065
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x2

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1068
    .local v6, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1069
    .local v7, "summaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x4

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1070
    .local v8, "entries":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x5

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1071
    .local v9, "keywords":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1072
    .local v23, "iconResStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1073
    const/16 v26, 0x6

    .line 1072
    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1074
    .local v15, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1075
    const/16 v26, 0xa

    .line 1074
    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1076
    .local v24, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1077
    const/16 v26, 0xd

    .line 1076
    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1078
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0xa

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1079
    .local v12, "targetPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0xb

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1080
    .local v13, "targetCls":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x7

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1081
    .local v14, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0xe

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1082
    .local v16, "menu_type":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0xf

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1083
    .local v17, "menu_path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x10

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1084
    .local v18, "category_id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x9

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1085
    .local v19, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v26, 0x11

    move/from16 v0, v26

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    .line 1086
    .local v21, "bundleBytes":[B
    const/16 v20, 0x0

    .line 1087
    .local v20, "args":Landroid/os/Bundle;
    if-eqz v21, :cond_0

    .line 1088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v25

    .line 1089
    .local v25, "parcel":Landroid/os/Parcel;
    move-object/from16 v0, v21

    array-length v3, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1090
    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1091
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v20

    .line 1092
    .local v20, "args":Landroid/os/Bundle;
    invoke-virtual/range {v25 .. v25}, Landroid/os/Parcel;->recycle()V

    .line 1096
    .end local v20    # "args":Landroid/os/Bundle;
    .end local v25    # "parcel":Landroid/os/Parcel;
    :cond_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1108
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 1111
    .local v4, "packageContext":Landroid/content/Context;
    :cond_2
    :goto_0
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1112
    const v10, 0x7f020139

    .line 1114
    .local v10, "iconResId":I
    :goto_1
    new-instance v3, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    invoke-direct/range {v3 .. v20}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v3

    .line 1097
    .end local v4    # "packageContext":Landroid/content/Context;
    .end local v10    # "iconResId":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 1098
    .restart local v4    # "packageContext":Landroid/content/Context;
    if-nez v4, :cond_2

    .line 1100
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v26

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v22

    .line 1102
    .local v22, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "SearchResultsSummary"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Cannot create Context for package: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/4 v3, 0x0

    return-object v3

    .line 1112
    .end local v22    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .restart local v10    # "iconResId":I
    goto :goto_1

    .line 1118
    .end local v4    # "packageContext":Landroid/content/Context;
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "summaryOn":Ljava/lang/String;
    .end local v7    # "summaryOff":Ljava/lang/String;
    .end local v8    # "entries":Ljava/lang/String;
    .end local v9    # "keywords":Ljava/lang/String;
    .end local v10    # "iconResId":I
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "targetPkg":Ljava/lang/String;
    .end local v13    # "targetCls":Ljava/lang/String;
    .end local v14    # "screenTitle":Ljava/lang/String;
    .end local v15    # "className":Ljava/lang/String;
    .end local v16    # "menu_type":I
    .end local v17    # "menu_path":Ljava/lang/String;
    .end local v18    # "category_id":Ljava/lang/String;
    .end local v19    # "action":Ljava/lang/String;
    .end local v21    # "bundleBytes":[B
    .end local v23    # "iconResStr":Ljava/lang/String;
    .end local v24    # "packageName":Ljava/lang/String;
    :cond_5
    const/4 v3, 0x0

    return-object v3
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1123
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 1124
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    return-wide v2

    .line 1125
    :cond_0
    check-cast v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    .end local v0    # "obj":Ljava/lang/Object;
    iget v1, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    int-to-long v2, v1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    if-nez p2, :cond_0

    .line 1330
    new-instance v18, Ljava/lang/IllegalStateException;

    .line 1331
    const-string/jumbo v19, "this should only be called when the cursor is valid"

    .line 1330
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1342
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;

    .line 1343
    .local v13, "result":Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;
    if-nez v13, :cond_1

    .line 1344
    const-string/jumbo v18, "SearchResultsSummary"

    const-string/jumbo v19, "result is null."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/16 v18, 0x0

    return-object v18

    .line 1348
    :cond_1
    if-nez p2, :cond_3

    .line 1349
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0402ad

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1354
    .local v17, "view":Landroid/view/View;
    :goto_0
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1369
    :goto_1
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 1370
    const v18, 0x7f110737

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1371
    .local v4, "categoryLabel":Landroid/widget/TextView;
    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    return-object v17

    .line 1352
    .end local v4    # "categoryLabel":Landroid/widget/TextView;
    .end local v17    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0402af

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "view":Landroid/view/View;
    goto :goto_0

    .line 1356
    .end local v17    # "view":Landroid/view/View;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1357
    .local v16, "type":I
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 1358
    move-object/from16 v17, p2

    .restart local v17    # "view":Landroid/view/View;
    goto :goto_1

    .line 1360
    .end local v17    # "view":Landroid/view/View;
    :cond_4
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0402ad

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1365
    .restart local v17    # "view":Landroid/view/View;
    :goto_2
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1363
    .end local v17    # "view":Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v18, v0

    const v19, 0x7f0402af

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .restart local v17    # "view":Landroid/view/View;
    goto :goto_2

    .line 1383
    .end local v16    # "type":I
    :cond_6
    const v18, 0x7f1100e6

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1384
    .local v15, "textTitle":Landroid/widget/TextView;
    const v18, 0x7f110215

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1385
    .local v14, "textSummary":Landroid/widget/TextView;
    const v18, 0x7f1100e5

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 1389
    .local v8, "imageView":Landroid/widget/ImageView;
    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v15, v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1391
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1396
    :goto_3
    iget-object v5, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    .line 1397
    .local v5, "className":Ljava/lang/String;
    iget-object v9, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    .line 1398
    .local v9, "key":Ljava/lang/String;
    const-string/jumbo v12, "com.android.settings"

    .line 1399
    .local v12, "pkg":Ljava/lang/String;
    if-nez v5, :cond_7

    .line 1400
    iget-object v12, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    .line 1401
    iget-object v5, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    .line 1404
    :cond_7
    if-nez v12, :cond_9

    .line 1405
    const-string/jumbo v18, "SearchResultsSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "pkg is null. className : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", key : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    return-object v17

    .line 1393
    .end local v5    # "className":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v12    # "pkg":Ljava/lang/String;
    :cond_8
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1394
    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v14, v1, v2}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1409
    .restart local v5    # "className":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v12    # "pkg":Ljava/lang/String;
    :cond_9
    const-string/jumbo v18, "com.google.android.gms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1410
    const v18, 0x7f020585

    move/from16 v0, v18

    iput v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    .line 1413
    :cond_a
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->menu_type:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 1414
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    move/from16 v18, v0

    const v19, 0x7f020139

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    .line 1418
    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1419
    const-string/jumbo v18, "com.android.settings"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string/jumbo v18, "com.google.android.gms"

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1420
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1425
    .local v6, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_4
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1426
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->category_id:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1454
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_c
    :goto_5
    return-object v17

    .line 1422
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v11

    .line 1423
    .local v11, "packageContext":Landroid/content/Context;
    iget v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->iconResId:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    goto :goto_4

    .line 1431
    .end local v11    # "packageContext":Landroid/content/Context;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_5

    .line 1441
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v10

    .line 1443
    .local v10, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v18, "SearchResultsSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Cannot load Drawable for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1439
    .end local v10    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .restart local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d0120

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sget-object v19, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1444
    .end local v6    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    .line 1445
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v18, "SearchResultsSummary"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Cannot load Drawable for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v13, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 1449
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_10
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1450
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1451
    const v18, 0x7f020139

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1052
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x0

    return v0

    .line 1055
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method protected makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;
    .locals 16
    .param p1, "inputSentence"    # Ljava/lang/String;
    .param p2, "targetSentence"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/TextView;
    .param p4, "subTitleLength"    # I

    .prologue
    .line 1244
    new-instance v7, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1245
    .local v7, "spanStr":Landroid/text/SpannableString;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string/jumbo v12, " "

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    .local v8, "st":Ljava/util/StringTokenizer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v3

    .line 1247
    .local v3, "color":I
    if-lez p4, :cond_0

    .line 1248
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1250
    :cond_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1251
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 1252
    .local v11, "token":Ljava/lang/String;
    move-object/from16 v10, p2

    .line 1253
    .local v10, "targetStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1257
    .local v2, "addOffset":I
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10, v11}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1258
    .local v5, "keyword":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1259
    move-object v11, v5

    .line 1261
    :cond_1
    const/4 v9, 0x0

    .line 1262
    .local v9, "startOffset":I
    const/4 v4, 0x0

    .line 1264
    .local v4, "endOffset":I
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1266
    .local v6, "lowerCase":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 1267
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1268
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    .line 1274
    :goto_1
    if-ltz v9, :cond_0

    .line 1278
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v13, p4, v9

    add-int/2addr v13, v2

    .line 1279
    add-int v14, p4, v4

    add-int/2addr v14, v2

    .line 1280
    const/16 v15, 0x21

    .line 1277
    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1282
    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1283
    add-int/2addr v2, v4

    .line 1284
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_0

    goto :goto_0

    .line 1270
    :cond_2
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1271
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    goto :goto_1

    .line 1286
    .end local v2    # "addOffset":I
    .end local v4    # "endOffset":I
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v6    # "lowerCase":Ljava/lang/String;
    .end local v9    # "startOffset":I
    .end local v10    # "targetStr":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    :cond_3
    return-object v7
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    .line 925
    return-void
.end method

.method public setRealCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 1006
    iput p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->realCnt:I

    .line 1005
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v2, 0x0

    .line 1010
    iget-object v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 1011
    return-object v2

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1014
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 1015
    if-eqz p1, :cond_1

    .line 1016
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 1017
    invoke-direct {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->constructList()V

    .line 1018
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    .line 1023
    :goto_0
    return-object v0

    .line 1020
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 1021
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SecSearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
