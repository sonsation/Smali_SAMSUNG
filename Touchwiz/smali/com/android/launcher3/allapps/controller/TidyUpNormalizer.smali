.class public Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;
.super Lcom/android/launcher3/allapps/controller/Normalizer;
.source "TidyUpNormalizer.java"


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
    .line 26
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/Normalizer;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .param p1, "obj1"    # Ljava/lang/Object;
    .param p2, "obj2"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v10, -0x1

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 31
    instance-of v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 32
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .local v0, "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    move-object v1, p2

    .line 33
    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 40
    .end local p1    # "obj1":Ljava/lang/Object;
    .end local p2    # "obj2":Ljava/lang/Object;
    .local v1, "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_0
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    .line 42
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->longCompare(JJ)I

    move-result v2

    .line 43
    .local v2, "ret":I
    if-nez v2, :cond_0

    .line 44
    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->integerCompare(II)I

    move-result v2

    .line 56
    :cond_0
    :goto_1
    if-nez v2, :cond_3

    .line 58
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    .line 59
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->mCollator:Ljava/text/Collator;

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 64
    :cond_1
    :goto_2
    if-nez v2, :cond_3

    .line 66
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_a

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_a

    .line 67
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->longCompare(JJ)I

    move-result v2

    .line 68
    if-nez v2, :cond_2

    .line 69
    iget-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    .line 74
    :cond_2
    :goto_3
    if-nez v2, :cond_3

    .line 78
    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->longCompare(JJ)I

    move-result v2

    .line 82
    :cond_3
    return v2

    .line 35
    .end local v0    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "ret":I
    .restart local p1    # "obj1":Ljava/lang/Object;
    .restart local p2    # "obj2":Ljava/lang/Object;
    :cond_4
    check-cast p1, Landroid/view/View;

    .end local p1    # "obj1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 36
    .restart local v0    # "a":Lcom/android/launcher3/common/base/item/ItemInfo;
    check-cast p2, Landroid/view/View;

    .end local p2    # "obj2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v1    # "b":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_0

    .line 46
    :cond_5
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_6

    .line 50
    const/4 v2, 0x0

    .restart local v2    # "ret":I
    goto :goto_1

    .line 54
    .end local v2    # "ret":I
    :cond_6
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_7

    move v2, v3

    .restart local v2    # "ret":I
    :goto_4
    goto :goto_1

    .end local v2    # "ret":I
    :cond_7
    move v2, v4

    goto :goto_4

    .line 60
    .restart local v2    # "ret":I
    :cond_8
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eq v5, v6, :cond_1

    .line 62
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_9

    move v2, v4

    :goto_5
    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_5

    .line 70
    :cond_a
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eq v5, v6, :cond_2

    .line 72
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v5, :cond_b

    move v2, v4

    :goto_6
    goto :goto_3

    :cond_b
    move v2, v3

    goto :goto_6
.end method

.method public normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I
    .locals 10
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
    .line 88
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<*>;"
    .local p4, "viewsOfScreen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 89
    const/4 v5, 0x0

    .line 90
    .local v5, "targetScreen":I
    const/4 v4, 0x0

    .line 98
    .local v4, "targetCell":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    .local v1, "o":Ljava/lang/Object;
    instance-of v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_3

    move-object v0, v1

    .line 100
    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .line 106
    .local v0, "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    :goto_1
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 107
    .local v2, "screen":J
    if-ne v4, p2, :cond_0

    .line 108
    add-int/lit8 v5, v5, 0x1

    .line 109
    const/4 v4, 0x0

    .line 112
    :cond_0
    int-to-long v8, v5

    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-eq v6, v4, :cond_2

    .line 114
    :cond_1
    if-eqz p4, :cond_4

    instance-of v6, v1, Landroid/view/View;

    if-eqz v6, :cond_4

    .line 115
    if-ne p5, v5, :cond_2

    .line 116
    check-cast v1, Landroid/view/View;

    .end local v1    # "o":Ljava/lang/Object;
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 127
    goto :goto_0

    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v2    # "screen":J
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_3
    move-object v6, v1

    .line 102
    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    .restart local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    goto :goto_1

    .line 119
    .restart local v2    # "screen":J
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    .line 120
    int-to-long v8, v5

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    .line 121
    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    .line 122
    rem-int v6, v4, p3

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    .line 123
    div-int v6, v4, p3

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_2

    .line 128
    .end local v0    # "item":Lcom/android/launcher3/common/base/item/ItemInfo;
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "screen":J
    :cond_5
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "MenuAppModel.MENU_CUSTOM_TIDE_UP_NORMALIZER"

    return-object v0
.end method