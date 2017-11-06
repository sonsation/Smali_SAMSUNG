.class public Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;
.super Ljava/lang/Object;
.source "BixbyMonitorStoreSearchResult.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final COUNT_WAIT:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "BixbyMonitorStoreSearchResult"


# instance fields
.field private mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

.field private mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

.field private mHandler:Landroid/os/Handler;

.field private mStoreResultTab:Ljava/lang/String;

.field private mWaitCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;Landroid/os/Handler;)V
    .locals 1
    .param p1, "storeType"    # Ljava/lang/String;
    .param p2, "fg"    # Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;
    .param p3, "callback"    # Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;
    .param p4, "mainHandler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mStoreResultTab:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    .line 43
    iput-object p4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mHandler:Landroid/os/Handler;

    .line 44
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    .line 45
    return-void
.end method

.method private static makePartialString([Ljava/lang/String;II)Ljava/lang/String;
    .locals 5
    .param p0, "separatedList"    # [Ljava/lang/String;
    .param p1, "startIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 108
    const-string v1, ""

    .line 109
    .local v1, "ret":Ljava/lang/String;
    if-eqz p0, :cond_3

    .line 110
    array-length v2, p0

    .line 111
    .local v2, "wordCount":I
    if-ltz p1, :cond_0

    if-ge p1, v2, :cond_0

    if-ltz p2, :cond_0

    if-lt p2, v2, :cond_1

    .line 113
    :cond_0
    const-string v3, ""

    .line 120
    .end local v2    # "wordCount":I
    :goto_0
    return-object v3

    .line 116
    .restart local v2    # "wordCount":I
    :cond_1
    move v0, p1

    .local v0, "index":I
    :goto_1
    if-gt v0, p2, :cond_3

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_2

    const-string v3, ""

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 117
    :cond_2
    const-string v3, " "

    goto :goto_2

    .end local v0    # "index":I
    .end local v2    # "wordCount":I
    :cond_3
    move-object v3, v1

    .line 120
    goto :goto_0
.end method

.method private static postWord(Landroid/content/res/Resources;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "separatedList"    # [Ljava/lang/String;
    .param p2, "matchedWordIndex"    # I

    .prologue
    .line 186
    const-string v6, ""

    .line 188
    .local v6, "ret":Ljava/lang/String;
    if-eqz p1, :cond_1

    array-length v7, p1

    if-lez v7, :cond_1

    .line 189
    const/4 v1, 0x0

    .line 190
    .local v1, "isMatched":Z
    array-length v0, p1

    .line 191
    .local v0, "count":I
    sub-int v7, v0, p2

    add-int/lit8 v2, v7, -0x1

    .line 192
    .local v2, "leftCount":I
    const/4 v7, 0x1

    if-le v2, v7, :cond_4

    .line 193
    add-int/lit8 v7, p2, 0x1

    aget-object v5, p1, v7

    .line 194
    .local v5, "middleWord":Ljava/lang/String;
    const v7, 0x7f0b0004

    invoke-virtual {p0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, "middleList":[Ljava/lang/String;
    array-length v8, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v3, v4, v7

    .line 196
    .local v3, "middle":Ljava/lang/String;
    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 197
    const/4 v1, 0x1

    .line 202
    .end local v3    # "middle":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_3

    .line 203
    add-int/lit8 v7, p2, 0x2

    add-int/lit8 v8, v0, -0x1

    invoke-static {p1, v7, v8}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->makePartialString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 211
    .end local v0    # "count":I
    .end local v1    # "isMatched":Z
    .end local v2    # "leftCount":I
    .end local v4    # "middleList":[Ljava/lang/String;
    .end local v5    # "middleWord":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v7, "BixbyMonitorStoreSearchResult"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "postWord >>> ret => "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    return-object v6

    .line 195
    .restart local v0    # "count":I
    .restart local v1    # "isMatched":Z
    .restart local v2    # "leftCount":I
    .restart local v3    # "middle":Ljava/lang/String;
    .restart local v4    # "middleList":[Ljava/lang/String;
    .restart local v5    # "middleWord":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    .end local v3    # "middle":Ljava/lang/String;
    :cond_3
    add-int/lit8 v7, p2, 0x1

    add-int/lit8 v8, v0, -0x1

    invoke-static {p1, v7, v8}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->makePartialString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 208
    .end local v4    # "middleList":[Ljava/lang/String;
    .end local v5    # "middleWord":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v0, -0x1

    aget-object v6, p1, v7

    goto :goto_1
.end method

.method private static previousWord(Landroid/content/res/Resources;[Ljava/lang/String;I)Ljava/lang/String;
    .locals 13
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "separatedList"    # [Ljava/lang/String;
    .param p2, "matchedWordIndex"    # I

    .prologue
    .line 125
    const-string v6, ""

    .line 126
    .local v6, "ret":Ljava/lang/String;
    const v10, 0x7f0b0003

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "famousList":[Ljava/lang/String;
    const v10, 0x7f0b0005

    invoke-virtual {p0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "playedList":[Ljava/lang/String;
    if-eqz p1, :cond_2

    array-length v10, p1

    if-lez v10, :cond_2

    .line 130
    const/4 v3, 0x0

    .line 131
    .local v3, "isMatched":Z
    const/4 v7, 0x1

    .line 132
    .local v7, "startIndex":I
    add-int/lit8 v0, p2, -0x1

    .line 133
    .local v0, "endIndex":I
    aget-object v8, p1, v0

    .line 135
    .local v8, "target":Ljava/lang/String;
    :goto_0
    if-gt v7, v0, :cond_1

    .line 136
    array-length v11, v2

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_0

    aget-object v1, v2, v10

    .line 137
    .local v1, "famous":Ljava/lang/String;
    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 138
    const/4 v3, 0x1

    .line 142
    .end local v1    # "famous":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_5

    .line 143
    add-int/lit8 v10, v0, -0x1

    if-lt v10, v7, :cond_1

    .line 144
    add-int/lit8 v10, v0, -0x1

    aget-object v9, p1, v10

    .line 145
    .local v9, "target2":Ljava/lang/String;
    array-length v11, v5

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v4, v5, v10

    .line 146
    .local v4, "played":Ljava/lang/String;
    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 147
    const/4 v3, 0x1

    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 170
    .end local v4    # "played":Ljava/lang/String;
    .end local v9    # "target2":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_8

    .line 171
    const-string v10, "BixbyMonitorStoreSearchResult"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "previousWord >>> Target("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") matched => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, p1, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v10, 0x0

    add-int/lit8 v11, v0, -0x1

    invoke-static {p1, v10, v11}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->makePartialString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    .line 180
    .end local v0    # "endIndex":I
    .end local v3    # "isMatched":Z
    .end local v7    # "startIndex":I
    .end local v8    # "target":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v10, "BixbyMonitorStoreSearchResult"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "previousWord >>> ret => "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 136
    .restart local v0    # "endIndex":I
    .restart local v1    # "famous":Ljava/lang/String;
    .restart local v3    # "isMatched":Z
    .restart local v7    # "startIndex":I
    .restart local v8    # "target":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 145
    .end local v1    # "famous":Ljava/lang/String;
    .restart local v4    # "played":Ljava/lang/String;
    .restart local v9    # "target2":Ljava/lang/String;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 155
    .end local v4    # "played":Ljava/lang/String;
    .end local v9    # "target2":Ljava/lang/String;
    :cond_5
    array-length v11, v5

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_6

    aget-object v4, v5, v10

    .line 156
    .restart local v4    # "played":Ljava/lang/String;
    invoke-static {v4, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 157
    const/4 v3, 0x1

    .line 162
    .end local v4    # "played":Ljava/lang/String;
    :cond_6
    if-nez v3, :cond_1

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 155
    .restart local v4    # "played":Ljava/lang/String;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 175
    .end local v4    # "played":Ljava/lang/String;
    :cond_8
    const-string v10, "BixbyMonitorStoreSearchResult"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "previousWord >>> Target("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") Not matched"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v10, 0x0

    add-int/lit8 v11, p2, -0x1

    invoke-static {p1, v10, v11}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->makePartialString([Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method private reloadRecommendKeyword()Z
    .locals 6

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "ret":Z
    const/16 v3, 0xa

    iput v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    .line 80
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getBixbyRecommendKeyword()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "recommendKeyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 83
    const-string v3, "BixbyMonitorStoreSearchResult"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BixbyMonitorStoreSearchResult >> Recommend Keyword("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") start reload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.common.search.internal_reload_recommend_searchkeyword"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.common.search.recommend_searchkeyword"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "com.samsung.common.search.recommend_searchkeyword_set"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 89
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 90
    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 92
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    const/4 v2, 0x1

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "recommendKeyword":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 95
    .restart local v1    # "recommendKeyword":Ljava/lang/String;
    :cond_1
    const-string v3, "BixbyMonitorStoreSearchResult"

    const-string v4, "BixbyMonitorStoreSearchResult >> Recommend Keyword is empty"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reloadRemovedMeaninglessKeyword()Z
    .locals 8

    .prologue
    .line 48
    const/4 v3, 0x0

    .line 49
    .local v3, "ret":Z
    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    .line 50
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getCurrentKeyword()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "origonalKeyword":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 54
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 55
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->removeMeaninglessKeyword(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "removeMeaningless":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 58
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.common.search.reload_recommend_searchkeyword"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.common.search.recommend_searchkeyword"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string v4, "com.samsung.common.search.recommend_searchkeyword_set"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 62
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    .line 63
    invoke-virtual {v4}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/samsung/android/app/music/milk/compat/BroadcastCompat;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    iget-object v4, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    const/4 v3, 0x1

    .line 68
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v4, "BixbyMonitorStoreSearchResult"

    const-string v5, "BixbyMonitorStoreSearchResult >> keyword is all valid"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .end local v1    # "origonalKeyword":Ljava/lang/String;
    .end local v2    # "removeMeaningless":Ljava/lang/String;
    :cond_1
    :goto_0
    return v3

    .line 70
    .restart local v1    # "origonalKeyword":Ljava/lang/String;
    :cond_2
    const-string v4, "BixbyMonitorStoreSearchResult"

    const-string v5, "BixbyMonitorStoreSearchResult >> Keyword is empty"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static removeMeaninglessKeyword(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 216
    move-object v3, p1

    .line 217
    .local v3, "ret":Ljava/lang/String;
    const-string v8, " "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "separatedList":[Ljava/lang/String;
    if-eqz v4, :cond_4

    array-length v8, v4

    if-lez v8, :cond_4

    .line 221
    array-length v7, v4

    .line 222
    .local v7, "wordcount":I
    const v8, 0x7f0b0006

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 223
    .local v6, "songNameList":[Ljava/lang/String;
    const v8, 0x7f0b0005

    invoke-virtual {p0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, "playedList":[Ljava/lang/String;
    array-length v8, v4

    const/4 v10, 0x2

    if-le v8, v10, :cond_4

    .line 226
    const/4 v1, 0x0

    .line 227
    .local v1, "isSongWordMached":Z
    const/4 v0, 0x1

    .local v0, "index":I
    :goto_0
    add-int/lit8 v8, v7, -0x1

    if-ge v0, v8, :cond_1

    .line 228
    array-length v10, v6

    move v8, v9

    :goto_1
    if-ge v8, v10, :cond_0

    aget-object v5, v6, v8

    .line 229
    .local v5, "songName":Ljava/lang/String;
    aget-object v11, v4, v0

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 230
    const/4 v1, 0x1

    .line 234
    .end local v5    # "songName":Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_6

    .line 239
    :cond_1
    if-nez v1, :cond_3

    .line 240
    const/4 v0, 0x1

    :goto_2
    add-int/lit8 v8, v7, -0x1

    if-ge v0, v8, :cond_3

    .line 241
    array-length v10, v2

    move v8, v9

    :goto_3
    if-ge v8, v10, :cond_2

    aget-object v5, v2, v8

    .line 242
    .restart local v5    # "songName":Ljava/lang/String;
    aget-object v11, v4, v0

    invoke-static {v5, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 243
    const/4 v1, 0x1

    .line 248
    .end local v5    # "songName":Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_8

    .line 254
    :cond_3
    if-eqz v1, :cond_4

    .line 255
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v4, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->previousWord(Landroid/content/res/Resources;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 256
    invoke-static {p0, v4, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->postWord(Landroid/content/res/Resources;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 261
    .end local v0    # "index":I
    .end local v1    # "isSongWordMached":Z
    .end local v2    # "playedList":[Ljava/lang/String;
    .end local v6    # "songNameList":[Ljava/lang/String;
    .end local v7    # "wordcount":I
    :cond_4
    const-string v8, "BixbyMonitorStoreSearchResult"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeMeaninglessKeyword >>> Original ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")  removed Keyword ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    return-object v3

    .line 228
    .restart local v0    # "index":I
    .restart local v1    # "isSongWordMached":Z
    .restart local v2    # "playedList":[Ljava/lang/String;
    .restart local v5    # "songName":Ljava/lang/String;
    .restart local v6    # "songNameList":[Ljava/lang/String;
    .restart local v7    # "wordcount":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 227
    .end local v5    # "songName":Ljava/lang/String;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .restart local v5    # "songName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 240
    .end local v5    # "songName":Ljava/lang/String;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private sendResult(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mCallback:Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mStoreResultTab:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/bixby/executor/search/store/IGetSearchResultFromStore;->onStoreSearchResultComplete(Ljava/lang/String;I)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    if-eqz v1, :cond_4

    .line 271
    const-string v1, "BixbyMonitorStoreSearchResult"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BixbyMonitorStoreSearchResult >> Wait Count ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->isShowLoading()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 273
    iget v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    if-lez v1, :cond_1

    .line 274
    iget v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mWaitCount:I

    .line 275
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->sendResult(I)V

    goto :goto_0

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mFragment:Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchBaseResultFragment;->getResultCount()I

    move-result v0

    .line 282
    .local v0, "resultCount":I
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->mStoreResultTab:Ljava/lang/String;

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 283
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->reloadRecommendKeyword()Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->reloadRemovedMeaninglessKeyword()Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->sendResult(I)V

    goto :goto_0

    .line 289
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->sendResult(I)V

    goto :goto_0

    .line 293
    .end local v0    # "resultCount":I
    :cond_4
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/BixbyMonitorStoreSearchResult;->sendResult(I)V

    goto :goto_0
.end method
