.class Landroid/widget/SemExpandableListView$10;
.super Ljava/lang/Object;
.source "SemExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemExpandableListView;->onJumpScrollToTopFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemExpandableListView;


# direct methods
.method constructor <init>(Landroid/widget/SemExpandableListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemExpandableListView;

    .prologue
    .line 3038
    iput-object p1, p0, Landroid/widget/SemExpandableListView$10;->this$0:Landroid/widget/SemExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3040
    iget-object v2, p0, Landroid/widget/SemExpandableListView$10;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-get33(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 3042
    :cond_0
    iget-object v2, p0, Landroid/widget/SemExpandableListView$10;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-get6(Landroid/widget/SemExpandableListView;)Landroid/widget/ExpandableListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    .line 3043
    .local v0, "groupCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3044
    iget-object v2, p0, Landroid/widget/SemExpandableListView$10;->this$0:Landroid/widget/SemExpandableListView;

    invoke-static {v2}, Landroid/widget/SemExpandableListView;->-get33(Landroid/widget/SemExpandableListView;)Landroid/widget/SemExpandableListView$OnGroupExpandListener;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/widget/SemExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    .line 3043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3039
    :cond_1
    return-void
.end method
