.class public Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;
.super Lcom/android/launcher3/allapps/controller/Normalizer;
.source "AlphabetNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/controller/Normalizer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/Normalizer;-><init>()V

    return-void
.end method

.method private compareChineseTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 7
    .param p1, "a"    # Lcom/android/launcher3/common/base/item/ItemInfo;
    .param p2, "b"    # Lcom/android/launcher3/common/base/item/ItemInfo;

    .prologue
    const/4 v6, 0x1

    .line 57
    iget-object v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "info1Title":Ljava/lang/String;
    iget-object v5, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, "info2Title":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 60
    .local v3, "section1":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v1

    .line 61
    .local v4, "section2":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v5, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 62
    .local v2, "result":I
    if-nez v2, :cond_0

    .line 63
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v5, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    :cond_0
    return v2

    .line 59
    .end local v2    # "result":I
    .end local v3    # "section1":Ljava/lang/String;
    .end local v4    # "section2":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v5

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 60
    .restart local v3    # "section1":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 34
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v0, "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, p2

    .line 35
    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 40
    .end local p1    # "obj1":Ljava/lang/Object;
    .end local p2    # "obj2":Ljava/lang/Object;
    .local v1, "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v3, v4, :cond_2

    .line 41
    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 42
    const/4 v2, -0x1

    .line 53
    :goto_1
    return v2

    .line 37
    .end local v0    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local p1    # "obj1":Ljava/lang/Object;
    .restart local p2    # "obj2":Ljava/lang/Object;
    :cond_0
    check-cast p1, Landroid/view/View;

    .end local p1    # "obj1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 38
    .restart local v0    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast p2, Landroid/view/View;

    .end local p2    # "obj2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v1    # "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_0

    .line 44
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .line 48
    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChinesePinyinSortingOnApps()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 49
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->compareChineseTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v2

    .local v2, "result":I
    goto :goto_1

    .line 51
    .end local v2    # "result":I
    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->mCollator:Ljava/text/Collator;

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method protected normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I
    .locals 8
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "cellCountX"    # I
    .param p5, "targetPage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .local p4, "viewsOfScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 73
    const/4 v3, 0x0

    .line 74
    .local v3, "targetScreen":I
    const/4 v2, 0x0

    .line 77
    .local v2, "targetCell":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 78
    .local v1, "o":Ljava/lang/Object;
    instance-of v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 79
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 83
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_1
    if-ne v2, p2, :cond_0

    .line 84
    add-int/lit8 v3, v3, 0x1

    .line 85
    const/4 v2, 0x0

    .line 89
    :cond_0
    if-eqz p4, :cond_3

    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_3

    .line 90
    if-ne p5, v3, :cond_1

    .line 91
    check-cast v1, Landroid/view/View;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_2
    move-object v4, v1

    .line 81
    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_1

    .line 95
    :cond_3
    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 96
    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 97
    rem-int v4, v2, p3

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 98
    div-int v4, v2, p3

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_4
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    const-string v0, "MENU_ALPHA_NORMALIZER"

    return-object v0
.end method
