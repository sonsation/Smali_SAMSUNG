.class public Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;
.super Ljava/lang/Object;
.source "AppsPickerSearchAlgorithm.java"


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

    sput-object v0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

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
    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->mApps:Ljava/util/List;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

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
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm$1;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
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
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "queryTextLower":Ljava/lang/String;
    sget-object v4, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "queryWords":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/util/ComponentKey;>;"
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    .line 68
    .local v0, "info":Lcom/android/launcher3/common/base/item/IconInfo;
    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->matches(Lcom/android/launcher3/common/base/item/IconInfo;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0    # "info":Lcom/android/launcher3/common/base/item/IconInfo;
    :cond_1
    return-object v3
.end method

.method protected matches(Lcom/android/launcher3/common/base/item/IconInfo;[Ljava/lang/String;)Z
    .locals 10
    .param p1, "info"    # Lcom/android/launcher3/common/base/item/IconInfo;
    .param p2, "queryWords"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v8, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "title":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseLookupSearching()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 78
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/launcher3/util/locale/LocaleUtils;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 79
    .local v0, "appIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "qi":I
    :goto_0
    array-length v8, p2

    if-ge v3, v8, :cond_7

    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "foundMatch":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "str1":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aget-object v9, p2, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_0

    .line 84
    const/4 v1, 0x1

    .line 88
    .end local v4    # "str1":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_3

    .line 109
    .end local v0    # "appIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "foundMatch":Z
    :cond_2
    :goto_1
    return v7

    .line 79
    .restart local v0    # "appIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v1    # "foundMatch":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "appIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "foundMatch":Z
    .end local v3    # "qi":I
    :cond_4
    sget-object v8, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "words":[Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "qi":I
    :goto_2
    array-length v8, p2

    if-ge v3, v8, :cond_7

    .line 95
    const/4 v1, 0x0

    .line 96
    .restart local v1    # "foundMatch":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v8, v6

    if-ge v2, v8, :cond_5

    .line 97
    aget-object v8, v6, v2

    aget-object v9, p2, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 98
    const/4 v1, 0x1

    .line 102
    :cond_5
    if-eqz v1, :cond_2

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 109
    .end local v1    # "foundMatch":Z
    .end local v2    # "i":I
    .end local v6    # "words":[Ljava/lang/String;
    :cond_7
    const/4 v7, 0x1

    goto :goto_1
.end method
