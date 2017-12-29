.class public Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;
.super Ljava/lang/Object;
.source "CocktailOrderManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CocktailOrderComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mOrderInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailOrderManager;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "this$0"    # Lcom/android/server/cocktailbar/settings/CocktailOrderManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 277
    .local p2, "orderList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;>;"
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->this$0:Lcom/android/server/cocktailbar/settings/CocktailOrderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iget-object v4, p1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 279
    :try_start_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Landroid/util/SparseArray;

    .line 280
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 281
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 282
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;

    .line 283
    .local v1, "info":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Landroid/util/SparseArray;

    iget v5, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mCocktailId:I

    iget v6, v1, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;->mOrder:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "info":Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderInfo;
    :cond_0
    monitor-exit v4

    .line 277
    return-void

    .line 278
    .end local v0    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 7
    .param p1, "cocktailId1"    # Ljava/lang/Integer;
    .param p2, "cocktailId2"    # Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    .line 291
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 292
    .local v1, "order1":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->mOrderInfoMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 293
    .local v2, "order2":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    sub-int/2addr v3, v4

    return v3

    .line 296
    :cond_0
    return v6

    .line 298
    .end local v1    # "order1":Ljava/lang/Integer;
    .end local v2    # "order2":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CocktailOrderComparator: no order info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return v6
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "cocktailId1"    # Ljava/lang/Object;
    .param p2, "cocktailId2"    # Ljava/lang/Object;

    .prologue
    .line 289
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "cocktailId1":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cocktailId2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/settings/CocktailOrderManager$CocktailOrderComparator;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
