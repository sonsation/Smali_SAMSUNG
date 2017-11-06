.class public final Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;
.super Ljava/lang/Object;
.source "OnlineKeywordRefiner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mKeywordsLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->mContext:Landroid/content/Context;

    .line 31
    const-string v0, "com.samsung.store.bixbyconfig_search_play_count"

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->mKeywordsLimit:I

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnlineKeywordRefiner() - mKeywordsLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->mKeywordsLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public refine(Ljava/lang/String;Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;)V
    .locals 4
    .param p1, "keyword"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    sget-object v1, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refine() - keyword: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "keywords":[Ljava/lang/String;
    array-length v1, v0

    iget v2, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->mKeywordsLimit:I

    if-le v1, v2, :cond_0

    .line 42
    sget-object v1, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "refine() - Will return origin keyword due to length limit."

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {p2, p1}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;->onRefineFinished(Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;

    invoke-direct {v2, p0, p2, p1}, Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$1;-><init>(Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner;Lcom/samsung/android/app/music/bixby/search/OnlineKeywordRefiner$OnOnlineKeywordRefineListener;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->getOnDeviceRecommendSearchKeywords(Lcom/samsung/android/app/music/service/milk/OnApiHandleCallback;Ljava/lang/String;)I

    goto :goto_0
.end method
