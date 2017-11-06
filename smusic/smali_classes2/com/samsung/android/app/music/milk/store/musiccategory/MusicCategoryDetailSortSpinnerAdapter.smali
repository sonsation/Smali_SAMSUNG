.class public Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;
.source "MusicCategoryDetailSortSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter$SearchSortItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicCategoryDetailSortSpinnerAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "items"    # [Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/BaseSpinnerAdapter;-><init>(Landroid/content/Context;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getItemString(I)Ljava/lang/String;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailSortSpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "MusicCategoryDetailSortSpinnerAdapter"

    return-object v0
.end method
