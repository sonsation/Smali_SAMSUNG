.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "SeslAbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V
    .locals 0

    .prologue
    .line 3830
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$1;

    .prologue
    .line 3830
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 3834
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$600(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 3835
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 3838
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;->access$700(Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
