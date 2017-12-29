.class public Lcom/android/server/cocktailbar/settings/CocktailBarSettings;
.super Ljava/lang/Object;
.source "CocktailBarSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    }
.end annotation


# static fields
.field private static final COCKTAIL_BAR_SEPARATER:C = ';'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCocktailMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mEnabledCocktailListCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private mEnabledCocktailsStrCache:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static synthetic -get0(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/SparseArray;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 29
    const/16 v1, 0x3b

    .line 28
    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    .line 59
    iput p3, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mHandler:Landroid/os/Handler;

    .line 61
    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->initCocktailMap(Landroid/util/SparseArray;)V

    .line 62
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V

    .line 56
    return-void
.end method

.method private initCocktailMap(Landroid/util/SparseArray;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    const/4 v6, 0x0

    .line 66
    iget-object v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 67
    :try_start_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 68
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 69
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 70
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cocktailbar/Cocktail;

    .line 71
    .local v1, "c":Lcom/samsung/android/cocktailbar/Cocktail;
    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v4

    .line 72
    .local v4, "provider":Landroid/content/ComponentName;
    new-instance v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v8

    .line 73
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 72
    :goto_1
    invoke-direct {v3, v8, v5}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;-><init>(ILjava/lang/String;)V

    .line 74
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/samsung/android/cocktailbar/Cocktail;->getProvider()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_0
    move-object v5, v6

    .line 73
    goto :goto_1

    .end local v1    # "c":Lcom/samsung/android/cocktailbar/Cocktail;
    .end local v4    # "provider":Landroid/content/ComponentName;
    :cond_1
    monitor-exit v7

    .line 65
    return-void

    .line 66
    .end local v0    # "N":I
    .end local v2    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method private static isLocalBinder()Z
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private putEnabledCocktailsStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 102
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void
.end method

.method private updateEnabledCocktailList()V
    .locals 2

    .prologue
    .line 125
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->isLocalBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailListLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 124
    :goto_0
    return-void

    .line 126
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;

    invoke-direct {v1, p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$1;-><init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateEnabledCocktailListLocked()Z
    .locals 6

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "enabledCocktailsStr":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v1, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 155
    const/4 v5, 0x0

    return v5

    .line 157
    :cond_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 158
    :goto_0
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v5}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "cocktailName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 161
    .local v4, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v4, :cond_1

    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "cocktailName":Ljava/lang/String;
    .end local v4    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_2
    if-eqz v0, :cond_3

    .line 168
    invoke-virtual {p0, v1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->setEnabledCocktailsLocked(Ljava/util/ArrayList;)V

    .line 170
    :cond_3
    iput-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 171
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public getChangedCocktailIdsListLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "addedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, "removedCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 229
    .local v0, "backupEnabledCocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v1, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->getEnabledCocktailsStr()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 231
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    iget-object v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 233
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 234
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "cocktailName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 236
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v3, :cond_0

    .line 237
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 239
    iget v6, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 244
    .end local v2    # "cocktailName":Ljava/lang/String;
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "oldCocktailName$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    .local v4, "oldCocktailName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 246
    .restart local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v3, :cond_2

    .line 247
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 248
    iget v6, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v4    # "oldCocktailName":Ljava/lang/String;
    :cond_3
    iput-object v1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public getEnableCocktailIds()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v1, "enabledCocktailIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 115
    .local v0, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "name$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 116
    .local v3, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 117
    .local v2, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-eqz v2, :cond_0

    .line 118
    iget v5, v2, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 121
    .end local v2    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getEnabledCocktailsStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "cocktail_bar_enabled_cocktails"

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEnabledCocktailsStr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailsStrCache:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabledCocktail(I)Z
    .locals 9
    .param p1, "cocktailId"    # I

    .prologue
    .line 175
    iget-object v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "debugString":Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 178
    .local v0, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "str$iterator":Ljava/util/Iterator;
    move-object v2, v1

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .local v2, "debugString":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 179
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 180
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-nez v3, :cond_0

    .line 181
    if-nez v2, :cond_4

    .line 182
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "isEnabledCocktail: invalid "

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 183
    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .local v1, "debugString":Ljava/lang/StringBuffer;
    :try_start_2
    const-string v6, " for cid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, " uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 184
    iget v8, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 183
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 186
    :goto_1
    const-string v6, " ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v2, v1

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 189
    :cond_0
    :try_start_3
    iget v6, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->cocktailId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v6, p1, :cond_3

    .line 190
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 193
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 194
    :try_start_4
    sget-object v6, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 196
    :cond_2
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 175
    .end local v0    # "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .end local v5    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .restart local v0    # "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v5    # "str$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_3

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_2

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    :cond_4
    move-object v1, v2

    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_1
.end method

.method public isEnabledCocktail(Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v7, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    monitor-enter v7

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, "debugString":Ljava/lang/StringBuffer;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mEnabledCocktailListCache:Ljava/util/ArrayList;

    .line 204
    .local v0, "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .local v5, "str$iterator":Ljava/util/Iterator;
    move-object v2, v1

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .local v2, "debugString":Ljava/lang/StringBuffer;
    :goto_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, "str":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCocktailMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;

    .line 206
    .local v3, "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    if-nez v3, :cond_0

    .line 207
    if-nez v2, :cond_4

    .line 208
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v6, "isEnabledCocktail: invalid "

    invoke-direct {v1, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 209
    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .local v1, "debugString":Ljava/lang/StringBuffer;
    :try_start_2
    const-string v6, " for pName="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, " uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    .line 210
    iget v8, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 209
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 212
    :goto_1
    const-string v6, " ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v2, v1

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_0

    .line 215
    :cond_0
    :try_start_3
    iget-object v6, v3, Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v6

    if-eqz v6, :cond_3

    .line 216
    const/4 v6, 0x1

    monitor-exit v7

    return v6

    .line 219
    .end local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 220
    :try_start_4
    sget-object v6, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 222
    :cond_2
    const/4 v6, 0x0

    monitor-exit v7

    return v6

    .line 201
    .end local v0    # "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .end local v5    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7

    throw v6

    .restart local v0    # "cocktailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v5    # "str$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_3

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v3    # "info":Lcom/android/server/cocktailbar/settings/CocktailBarSettings$CocktailInfo;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_2

    .end local v1    # "debugString":Ljava/lang/StringBuffer;
    .restart local v2    # "debugString":Ljava/lang/StringBuffer;
    :cond_4
    move-object v1, v2

    .end local v2    # "debugString":Ljava/lang/StringBuffer;
    .restart local v1    # "debugString":Ljava/lang/StringBuffer;
    goto :goto_1
.end method

.method public setCurrentUserId(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->mCurrentUserId:I

    .line 84
    return-void
.end method

.method public setEnabledCocktailsLocked(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "cocktails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 90
    .local v0, "N":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 92
    if-lez v2, :cond_0

    .line 93
    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->putEnabledCocktailsStr(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public updateInstalledCocktails(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/cocktailbar/Cocktail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "cocktailArr":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/samsung/android/cocktailbar/Cocktail;>;"
    invoke-direct {p0, p1}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->initCocktailMap(Landroid/util/SparseArray;)V

    .line 81
    invoke-direct {p0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettings;->updateEnabledCocktailList()V

    .line 79
    return-void
.end method
