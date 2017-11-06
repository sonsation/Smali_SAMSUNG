.class public Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "SeslHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView$FixedViewInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
