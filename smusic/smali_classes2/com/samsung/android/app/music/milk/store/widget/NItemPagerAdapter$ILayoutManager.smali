.class public interface abstract Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;
.super Ljava/lang/Object;
.source "NItemPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ILayoutManager"
.end annotation


# virtual methods
.method public abstract getViewPager()Landroid/support/v4/view/ViewPager;
.end method

.method public abstract layoutItem(Landroid/view/ViewGroup;Landroid/view/View;I)V
.end method

.method public abstract layoutPage(Landroid/view/ViewGroup;Landroid/view/ViewGroup;I)V
.end method

.method public abstract lazyLoadAfterGlobalLayout()V
.end method

.method public abstract setViewPager(Landroid/support/v4/view/ViewPager;)V
.end method
