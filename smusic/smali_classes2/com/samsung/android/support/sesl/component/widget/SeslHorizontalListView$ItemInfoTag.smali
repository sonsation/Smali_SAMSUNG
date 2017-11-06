.class Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;
.super Ljava/lang/Object;
.source "SeslHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemInfoTag"
.end annotation


# instance fields
.field protected mChildrenNumberTotal:I

.field protected mChildrenVisibilityBitsGone:J

.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mHeightSpec:I

.field protected mWidthSpec:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 4891
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4892
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->mChildrenVisibilityBitsGone:J

    .line 4893
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->mChildrenNumberTotal:I

    .line 4895
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    .line 4896
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 4898
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->mWidthSpec:I

    .line 4899
    iput v2, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$ItemInfoTag;->mHeightSpec:I

    .line 4900
    return-void
.end method
