.class Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "SlidingTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0

    .prologue
    .line 543
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 544
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->populateFromPagerAdapter()V

    .line 549
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$PagerAdapterObserver;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->populateFromPagerAdapter()V

    .line 554
    return-void
.end method
