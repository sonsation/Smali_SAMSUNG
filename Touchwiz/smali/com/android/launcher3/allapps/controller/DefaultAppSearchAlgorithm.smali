.class public Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "[\\s|\\p{javaSpaceChar}]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/IconInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .param p1, "interruptActiveRequests"    # Z

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method public doGalaxyAppsSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 103
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$2;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 52
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm$1;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method protected getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "search":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 73
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    iget-object v4, v0, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    return-object v1
.end method

.method protected matches(Lcom/android/launcher3/common/base/item/IconInfo;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "queryWords"    # [Ljava/lang/String;

    .prologue
    .line 81
    iget-object v5, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 83
    .local v4, "words":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "qi":I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_3

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "foundMatch":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 86
    aget-object v5, v4, v1

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const/4 v0, 0x1

    .line 91
    :cond_0
    if-nez v0, :cond_2

    .line 94
    const/4 v5, 0x0

    .line 97
    .end local v0    # "foundMatch":Z
    .end local v1    # "i":I
    :goto_2
    return v5

    .line 85
    .restart local v0    # "foundMatch":Z
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "foundMatch":Z
    .end local v1    # "i":I
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method
