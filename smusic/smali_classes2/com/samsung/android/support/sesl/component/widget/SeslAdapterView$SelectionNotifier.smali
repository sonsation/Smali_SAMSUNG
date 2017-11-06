.class Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "SeslAdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V
    .locals 0

    .prologue
    .line 1071
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.SelectionNotifier;"
    iput-object p1, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;
    .param p2, "x1"    # Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$1;

    .prologue
    .line 1071
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.SelectionNotifier;"
    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;-><init>(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1073
    .local p0, "this":Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;, "Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView<TT;>.SelectionNotifier;"
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-static {v0, p0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->access$202(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;)Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView$SelectionNotifier;->this$0:Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;->access$300(Lcom/samsung/android/support/sesl/component/widget/SeslAdapterView;)V

    goto :goto_0
.end method
