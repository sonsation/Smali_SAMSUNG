.class public final Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;
.super Ljava/lang/Object;
.source "SetStoreQueryExecutor.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutor;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;Lcom/samsung/android/app/music/common/activity/SearchActivity;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;)V
    .locals 0
    .param p1, "executorManager"    # Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "searchActivity"    # Lcom/samsung/android/app/music/common/activity/SearchActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "searchView"    # Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->getQueryText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mSearchView:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->getContentsType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;)Lcom/samsung/android/app/music/common/activity/SearchActivity;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptyKeyword(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptySong(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/util/List;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptyArtist(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private canNoun(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lastWord"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\uac00\uc744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "\ub9c8\uc744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\uc5b4\uba39\uc744"

    .line 270
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ub178\uc744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\uc774\uc744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\uace0\uc744"

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ub9de\uc744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\ub9ac\uc744"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\uac11\uc744"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContentsType(Ljava/lang/String;)I
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "type":I
    const-string v1, "SearchLocal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SearchAll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    :cond_0
    const/4 v0, 0x0

    .line 177
    :cond_1
    :goto_0
    return v0

    .line 174
    :cond_2
    const-string v1, "SearchStore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getQueryText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "artistName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "songName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    .local v0, "queryText":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    move-object v0, p1

    goto :goto_0

    .line 189
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    move-object v0, p2

    goto :goto_0

    .line 191
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->getVerifyKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVerifyKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 198
    move-object v3, p1

    .line 199
    .local v3, "ret":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-virtual {v10}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "com.samsung.store.support_bixby_search_remove"

    invoke-static {v10, v11, v9}, Lcom/samsung/android/app/music/common/preferences/Pref;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 202
    .local v7, "supportBixbyRemove":Z
    if-nez v7, :cond_0

    .line 203
    sget-object v9, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    const-string v10, "getVerifyKeyword >>> Server send bixby search keyword remove feature as Disable"

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 240
    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 208
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_0
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 209
    .local v5, "separatedList":[Ljava/lang/String;
    if-eqz v5, :cond_6

    array-length v10, v5

    const/4 v11, 0x1

    if-le v10, v11, :cond_6

    .line 210
    array-length v6, v5

    .line 211
    .local v6, "size":I
    add-int/lit8 v10, v6, -0x1

    aget-object v2, v5, v10

    .line 213
    .local v2, "lastKey":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->shouldVerifyKeyword(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 214
    const/4 v3, 0x0

    .line 215
    const/4 v1, 0x1

    .line 216
    .local v1, "isFirst":Z
    const/4 v0, 0x0

    .line 217
    .local v0, "index":I
    array-length v10, v5

    :goto_1
    if-ge v9, v10, :cond_5

    aget-object v8, v5, v9

    .line 218
    .local v8, "term":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 219
    if-eqz v1, :cond_2

    .line 220
    const/4 v1, 0x0

    .line 221
    move-object v3, v8

    .line 217
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 223
    :cond_2
    if-ge v0, v6, :cond_1

    .line 224
    add-int/lit8 v11, v6, -0x1

    if-ne v0, v11, :cond_3

    .line 225
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0, v8}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->removeKoreanLastPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 227
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 233
    .end local v0    # "index":I
    .end local v1    # "isFirst":Z
    .end local v8    # "term":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->removeKoreanLastPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .end local v2    # "lastKey":Ljava/lang/String;
    .end local v6    # "size":I
    :cond_5
    :goto_3
    sget-object v9, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getVerifyKeyword >>> Search Keyword ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")=> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v3

    .line 240
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    goto/16 :goto_0

    .line 236
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->removeKoreanLastPosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3
.end method

.method private isEmptyArtist(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "artistName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 145
    const-string v1, "artistName"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptyArtistAndSongName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "artistName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "songName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptyArtist(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptySong(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptyKeyword(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 164
    const-string v1, "keyword"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v0

    .line 165
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmptySong(Ljava/util/List;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "songName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    .line 152
    const-string/jumbo v1, "songName"

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeKoreanLastPosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "lastWord"    # Ljava/lang/String;

    .prologue
    .line 258
    move-object v0, p1

    .line 260
    .local v0, "ret":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->canNoun(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "\uc744"

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "\ub97c"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 262
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    .line 265
    :cond_1
    return-object v0
.end method

.method private shouldVerifyKeyword(Ljava/lang/String;)Z
    .locals 6
    .param p1, "lastKey"    # Ljava/lang/String;

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, "ret":Z
    iget-object v3, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mSearchActivity:Lcom/samsung/android/app/music/common/activity/SearchActivity;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/common/activity/SearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0007

    .line 247
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "songNameList":[Ljava/lang/String;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 249
    .local v1, "songName":Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 250
    const/4 v0, 0x1

    .line 254
    .end local v0    # "ret":Z
    .end local v1    # "songName":Ljava/lang/String;
    :cond_0
    return v0

    .line 248
    .restart local v0    # "ret":Z
    .restart local v1    # "songName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public execute(Lcom/samsung/android/app/musiclibrary/core/bixby/Command;)Z
    .locals 12
    .param p1, "command"    # Lcom/samsung/android/app/musiclibrary/core/bixby/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "action":Ljava/lang/String;
    const-string v1, "SET_STORE_QUERY"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "ARTIST_NAME"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "artistName":Ljava/lang/String;
    const-string v1, "SONG_NAME"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "songName":Ljava/lang/String;
    const-string v1, "KEYWORD"

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "keyword":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "execute() - "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", artistName: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", songName: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ", keyword: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Command;->getParameterNames()Ljava/util/List;

    move-result-object v3

    .line 66
    .local v3, "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v3, v6, v5}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptyArtistAndSongName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->isEmptyKeyword(Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 68
    const-string/jumbo v1, "songName"

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "artistName"

    .line 69
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    :cond_0
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    const-string v2, "execute() - Empty artistName and songName."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "Search"

    invoke-direct {v8, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 74
    .local v8, "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "artistName/songName"

    const-string v2, "Empty"

    const-string/jumbo v10, "yes"

    invoke-virtual {v8, v1, v2, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v0, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    move v0, v9

    .line 140
    .end local v3    # "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "keyword":Ljava/lang/String;
    .end local v5    # "songName":Ljava/lang/String;
    .end local v6    # "artistName":Ljava/lang/String;
    .end local v8    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_1
    :goto_0
    return v0

    .line 79
    .restart local v3    # "parameterNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "keyword":Ljava/lang/String;
    .restart local v5    # "songName":Ljava/lang/String;
    .restart local v6    # "artistName":Ljava/lang/String;
    :cond_2
    sget-object v1, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->TAG:Ljava/lang/String;

    const-string v2, "execute() - Empty keyword."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    new-instance v8, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;

    const-string v1, "Search"

    invoke-direct {v8, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;-><init>(Ljava/lang/String;)V

    .line 83
    .restart local v8    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    const-string v1, "keyword"

    const-string v2, "Exist"

    const-string v10, "no"

    invoke-virtual {v8, v1, v2, v10}, Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;->setScreenParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;->mExecutorManager:Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;

    invoke-direct {v2, v0, v8}, Lcom/samsung/android/app/musiclibrary/core/bixby/Result;-><init>(ZLcom/samsung/android/app/musiclibrary/core/bixby/Nlg;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/CommandExecutorManager;->onCommandCompleted(Lcom/samsung/android/app/musiclibrary/core/bixby/Result;)V

    move v0, v9

    .line 86
    goto :goto_0

    .line 90
    .end local v8    # "nlg":Lcom/samsung/android/app/musiclibrary/core/bixby/Nlg;
    :cond_3
    new-instance v0, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$2;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/Command;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object v0

    const-wide/16 v10, 0xc8

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 120
    invoke-virtual {v0, v10, v11, v1}, Lrx/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;

    invoke-direct {v1, p0, v6, v5, v4}, Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor$1;-><init>(Lcom/samsung/android/app/music/bixby/executor/search/store/SetStoreQueryExecutor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move v0, v9

    .line 138
    goto :goto_0
.end method
