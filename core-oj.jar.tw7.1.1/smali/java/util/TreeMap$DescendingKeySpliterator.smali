.class final Ljava/util/TreeMap$DescendingKeySpliterator;
.super Ljava/util/TreeMap$TreeMapSpliterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DescendingKeySpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$TreeMapSpliterator",
        "<TK;TV;>;",
        "Ljava/util/Spliterator",
        "<TK;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V
    .locals 0
    .param p4, "side"    # I
    .param p5, "est"    # I
    .param p6, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$TreeMapEntry",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .prologue
    .line 2839
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeySpliterator<TK;TV;>;"
    .local p1, "tree":Ljava/util/TreeMap;, "Ljava/util/TreeMap<TK;TV;>;"
    .local p2, "origin":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    .local p3, "fence":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    invoke-direct/range {p0 .. p6}, Ljava/util/TreeMap$TreeMapSpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    .line 2838
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 2

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 2901
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    if-nez v1, :cond_0

    const/16 v0, 0x40

    :cond_0
    or-int/lit8 v0, v0, 0x1

    or-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)V"
        }
    .end annotation

    .prologue
    .line 2862
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    if-nez p1, :cond_0

    .line 2863
    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    .line 2864
    :cond_0
    iget v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    if-gez v4, :cond_1

    .line 2865
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    .line 2866
    :cond_1
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2867
    .local v1, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    .line 2868
    iput-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2870
    :cond_2
    iget-object v4, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2871
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    .local v2, "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_3

    .line 2872
    :goto_0
    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    .local v3, "pr":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v3, :cond_4

    .line 2873
    move-object v2, v3

    goto :goto_0

    .line 2876
    .end local v3    # "pr":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_3
    :goto_1
    iget-object v2, v0, Ljava/util/TreeMap$TreeMapEntry;->parent:Ljava/util/TreeMap$TreeMapEntry;

    if-eqz v2, :cond_4

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v4, :cond_4

    .line 2877
    move-object v0, v2

    goto :goto_1

    .line 2879
    :cond_4
    move-object v0, v2

    if-eqz v2, :cond_5

    if-ne v0, v1, :cond_2

    .line 2880
    :cond_5
    iget-object v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v4}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v4

    iget v5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    if-eq v4, v5, :cond_6

    .line 2881
    new-instance v4, Ljava/util/ConcurrentModificationException;

    invoke-direct {v4}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v4

    .line 2861
    .end local v2    # "p":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    return-void
.end method

.method public tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TK;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeySpliterator<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TK;>;"
    const/4 v2, 0x0

    .line 2887
    if-nez p1, :cond_0

    .line 2888
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2889
    :cond_0
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    if-gez v1, :cond_1

    .line 2890
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    .line 2891
    :cond_1
    iget-object v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v0, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v0, :cond_2

    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    if-ne v0, v1, :cond_3

    .line 2892
    :cond_2
    return v2

    .line 2893
    :cond_3
    invoke-static {v0}, Ljava/util/TreeMap;->predecessor(Ljava/util/TreeMap$TreeMapEntry;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v1

    iput-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .line 2894
    iget-object v1, v0, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 2895
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get2(Ljava/util/TreeMap;)I

    move-result v1

    iget v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    if-eq v1, v2, :cond_4

    .line 2896
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 2897
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    .prologue
    .line 2842
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeySpliterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$DescendingKeySpliterator;->trySplit()Ljava/util/TreeMap$DescendingKeySpliterator;

    move-result-object v0

    return-object v0
.end method

.method public trySplit()Ljava/util/TreeMap$DescendingKeySpliterator;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap$DescendingKeySpliterator",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Ljava/util/TreeMap$DescendingKeySpliterator;, "Ljava/util/TreeMap<TK;TV;>.DescendingKeySpliterator<TK;TV;>;"
    const/4 v0, 0x0

    .line 2843
    iget v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    if-gez v1, :cond_0

    .line 2844
    invoke-virtual {p0}, Ljava/util/TreeMap$TreeMapSpliterator;->getEstimate()I

    .line 2845
    :cond_0
    iget v7, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    .line 2846
    .local v7, "d":I
    iget-object v2, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    .local v2, "e":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    iget-object v8, p0, Ljava/util/TreeMap$TreeMapSpliterator;->fence:Ljava/util/TreeMap$TreeMapEntry;

    .line 2847
    .local v8, "f":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    if-eqz v2, :cond_1

    if-ne v2, v8, :cond_2

    :cond_1
    move-object v3, v0

    .line 2852
    .local v3, "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_6

    if-eq v3, v2, :cond_6

    if-eq v3, v8, :cond_6

    .line 2853
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    iget-object v4, v2, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    iget-object v5, v3, Ljava/util/TreeMap$TreeMapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_6

    .line 2854
    const/4 v0, 0x1

    iput v0, p0, Ljava/util/TreeMap$TreeMapSpliterator;->side:I

    .line 2855
    new-instance v0, Ljava/util/TreeMap$DescendingKeySpliterator;

    .line 2856
    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    iput-object v3, p0, Ljava/util/TreeMap$TreeMapSpliterator;->current:Ljava/util/TreeMap$TreeMapEntry;

    iget v4, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    ushr-int/lit8 v5, v4, 0x1

    iput v5, p0, Ljava/util/TreeMap$TreeMapSpliterator;->est:I

    iget v6, p0, Ljava/util/TreeMap$TreeMapSpliterator;->expectedModCount:I

    const/4 v4, -0x1

    .line 2855
    invoke-direct/range {v0 .. v6}, Ljava/util/TreeMap$DescendingKeySpliterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$TreeMapEntry;Ljava/util/TreeMap$TreeMapEntry;III)V

    return-object v0

    .line 2848
    .end local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_2
    if-nez v7, :cond_3

    iget-object v1, p0, Ljava/util/TreeMap$TreeMapSpliterator;->tree:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/util/TreeMap;->-get3(Ljava/util/TreeMap;)Ljava/util/TreeMap$TreeMapEntry;

    move-result-object v3

    goto :goto_0

    .line 2849
    :cond_3
    if-gez v7, :cond_4

    iget-object v3, v2, Ljava/util/TreeMap$TreeMapEntry;->left:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    .line 2850
    :cond_4
    if-lez v7, :cond_5

    if-eqz v8, :cond_5

    iget-object v3, v8, Ljava/util/TreeMap$TreeMapEntry;->right:Ljava/util/TreeMap$TreeMapEntry;

    goto :goto_0

    :cond_5
    move-object v3, v0

    .line 2851
    goto :goto_0

    .line 2858
    .restart local v3    # "s":Ljava/util/TreeMap$TreeMapEntry;, "Ljava/util/TreeMap$TreeMapEntry<TK;TV;>;"
    :cond_6
    return-object v0
.end method
