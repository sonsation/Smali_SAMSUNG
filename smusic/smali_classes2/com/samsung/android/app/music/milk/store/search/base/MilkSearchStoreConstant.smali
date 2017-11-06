.class public Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;
.super Ljava/lang/Object;
.source "MilkSearchStoreConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$FragmentType;,
        Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$DisplayType;,
        Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant$PresetContentType;
    }
.end annotation


# static fields
.field public static final INVALID_SORT_ORDER:Ljava/lang/String; = "-1"

.field public static final KEY_FROM_PLAYLIST:Ljava/lang/String; = "key_from_playlist"

.field public static final KEY_FROM_SELECTED_TRACK_COUNT:Ljava/lang/String; = "from_selected_track_count"

.field public static final KEY_SELECTED_TRACKS:Ljava/lang/String; = "selected_tracks"

.field public static final NUMBER_OF_SEARCH_RESULTS_PER_PAGE:I = 0x32

.field public static final SORT_ITEM_LIST_1:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

.field public static final SORT_ITEM_LIST_2:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

.field public static final SORT_ITEM_LIST_3:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const v8, 0x7f0a045e

    const v7, 0x7f0a045d

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const-string v2, "1"

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const v2, 0x7f0a045f

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const v2, 0x7f0a0460

    const-string v3, "3"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const-string v3, "4"

    invoke-direct {v2, v7, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_1:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const-string v2, "1"

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const v2, 0x7f0a045f

    const-string v3, "2"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const-string v2, "4"

    invoke-direct {v1, v7, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_2:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    .line 55
    new-array v0, v6, [Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const-string v2, "1"

    invoke-direct {v1, v8, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    const-string v2, "4"

    invoke-direct {v1, v7, v2}, Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;-><init>(ILjava/lang/String;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/app/music/milk/store/search/base/MilkSearchStoreConstant;->SORT_ITEM_LIST_3:[Lcom/samsung/android/app/music/milk/store/search/adapter/MilkSearchStoreSortSpinnerAdapter$SearchSortItem;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
