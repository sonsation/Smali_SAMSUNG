.class public Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils;
.super Ljava/lang/Object;
.source "MilkCollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;,
        Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(Ljava/util/Collection;Ljava/util/Collection;Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;)Ljava/util/Collection;
    .locals 3
    .param p2    # Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TD;>;",
            "Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter",
            "<TT;TD;>;)",
            "Ljava/util/Collection",
            "<TD;>;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "original":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "dest":Ljava/util/Collection;, "Ljava/util/Collection<TD;>;"
    .local p2, "converter":Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;, "Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter<TT;TD;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 37
    :cond_0
    return-object p1

    .line 32
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 33
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static remove(Ljava/util/Collection;Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;)I
    .locals 4
    .param p1    # Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "condition":Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;, "Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition<TT;>;"
    if-nez p0, :cond_1

    .line 49
    const/4 v1, 0x0

    .line 60
    :cond_0
    return v1

    .line 51
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 52
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    const/4 v1, 0x0

    .line 53
    .local v1, "removed":I
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 55
    .local v2, "targetValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Lcom/samsung/android/app/music/milk/util/MilkCollectionUtils$Condition;->checkCondition(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 57
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
