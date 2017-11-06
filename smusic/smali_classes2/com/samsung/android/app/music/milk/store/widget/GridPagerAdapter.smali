.class public abstract Lcom/samsung/android/app/music/milk/store/widget/GridPagerAdapter;
.super Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;
.source "GridPagerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;-><init>(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemCountInPage"    # I

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;-><init>(Landroid/content/Context;I)V

    .line 12
    return-void
.end method
