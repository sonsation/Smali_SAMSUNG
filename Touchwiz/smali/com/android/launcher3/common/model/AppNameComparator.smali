.class public Lcom/android/launcher3/common/model/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"


# instance fields
.field private final mAppInfoComparator:Lcom/android/launcher3/common/model/AbstractUserComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/common/model/AbstractUserComparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mSectionNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    .line 40
    new-instance v0, Lcom/android/launcher3/common/model/AppNameComparator$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/common/model/AppNameComparator$1;-><init>(Lcom/android/launcher3/common/model/AppNameComparator;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/common/model/AbstractUserComparator;

    .line 60
    new-instance v0, Lcom/android/launcher3/common/model/AppNameComparator$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/model/AppNameComparator$2;-><init>(Lcom/android/launcher3/common/model/AppNameComparator;)V

    iput-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/model/AppNameComparator;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/common/model/AppNameComparator;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/AppNameComparator;->compareTitles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private compareTitles(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "aTitle"    # Ljava/lang/String;
    .param p2, "bTitle"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, "titleA":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "titleB":Ljava/lang/String;
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher3/util/locale/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/launcher3/util/locale/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 94
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 95
    .local v0, "aStartsWithLetter":Z
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 96
    invoke-virtual {v3, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    .line 97
    .local v1, "bStartsWithLetter":Z
    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 104
    :goto_2
    return v4

    .end local v0    # "aStartsWithLetter":Z
    .end local v1    # "bStartsWithLetter":Z
    :cond_0
    move v0, v5

    .line 94
    goto :goto_0

    .restart local v0    # "aStartsWithLetter":Z
    :cond_1
    move v1, v5

    .line 96
    goto :goto_1

    .line 99
    .restart local v1    # "bStartsWithLetter":Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 100
    const/4 v4, -0x1

    goto :goto_2

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v4, v2, v3}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2
.end method


# virtual methods
.method public getAppInfoComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mAppInfoComparator:Lcom/android/launcher3/common/model/AbstractUserComparator;

    return-object v0
.end method

.method public getSectionNameComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/launcher3/common/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    return-object v0
.end method
