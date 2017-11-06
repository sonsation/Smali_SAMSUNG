.class public Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;
.super Ljava/lang/Object;
.source "SeslListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FixedViewInfo"
.end annotation


# instance fields
.field public data:Ljava/lang/Object;

.field public isSelectable:Z

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslListView$FixedViewInfo;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
