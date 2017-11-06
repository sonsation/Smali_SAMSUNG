.class Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;
.super Ljava/lang/Object;
.source "SlidingTabLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 527
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result v1

    .line 528
    .local v1, "tabCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 529
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$100(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne p1, v2, :cond_1

    .line 530
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->access$400(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 534
    :cond_0
    return-void

    .line 528
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
