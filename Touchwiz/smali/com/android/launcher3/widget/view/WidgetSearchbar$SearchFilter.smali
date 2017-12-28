.class Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;
.super Ljava/lang/Object;
.source "WidgetSearchbar.java"

# interfaces
.implements Lcom/android/launcher3/widget/view/WidgetPagedView$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetSearchbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;Lcom/android/launcher3/widget/view/WidgetSearchbar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher3/widget/view/WidgetSearchbar;
    .param p2, "x1"    # Lcom/android/launcher3/widget/view/WidgetSearchbar$1;

    .prologue
    .line 506
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;-><init>(Lcom/android/launcher3/widget/view/WidgetSearchbar;)V

    return-void
.end method


# virtual methods
.method public filterWidgets(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "in":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v10, -0x1

    .line 510
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v5, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v7, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$100(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Landroid/widget/SearchView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 512
    .local v6, "search":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$500(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 513
    iget-object v7, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-static {v7}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->access$500(Lcom/android/launcher3/widget/view/WidgetSearchbar;)Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchListener;->setSearchString(Ljava/lang/String;)V

    .line 514
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "obj":Ljava/lang/Object;
    move-object v2, v4

    .line 515
    check-cast v2, Ljava/util/List;

    .line 516
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "label":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 518
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 522
    .local v0, "buf":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    .line 523
    .local v1, "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    iget-object v9, p0, Lcom/android/launcher3/widget/view/WidgetSearchbar$SearchFilter;->this$0:Lcom/android/launcher3/widget/view/WidgetSearchbar;

    invoke-virtual {v9}, Lcom/android/launcher3/widget/view/WidgetSearchbar;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_3

    .line 524
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 527
    .end local v1    # "info":Lcom/android/launcher3/common/base/item/PendingAddItemInfo;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 528
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 531
    .end local v0    # "buf":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    .end local v2    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/common/base/item/PendingAddItemInfo;>;"
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "obj":Ljava/lang/Object;
    :cond_5
    return-object v5
.end method
