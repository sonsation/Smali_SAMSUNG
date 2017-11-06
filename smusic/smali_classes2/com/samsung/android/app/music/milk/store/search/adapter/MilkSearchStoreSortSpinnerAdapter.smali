.class public Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
.source "MilkSearchStoreSortSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getItemString(I)Ljava/lang/String;
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    iget v0, v0, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;->message:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "MilkSearchStoreSortSpinnerAdapter"

    return-object v0
.end method
