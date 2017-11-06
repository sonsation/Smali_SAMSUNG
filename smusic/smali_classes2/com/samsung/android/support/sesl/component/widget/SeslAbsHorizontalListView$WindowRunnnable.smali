.class Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;
.super Ljava/lang/Object;
.source "SeslAbsHorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WindowRunnnable"
.end annotation


# instance fields
.field private mOriginalAttachCount:I

.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V
    .locals 0

    .prologue
    .line 3637
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$1;

    .prologue
    .line 3637
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .locals 1

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$400(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;->mOriginalAttachCount:I

    .line 3642
    return-void
.end method

.method public sameWindow()Z
    .locals 2

    .prologue
    .line 3645
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;->access$500(Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView;)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAbsHorizontalListView$WindowRunnnable;->mOriginalAttachCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
